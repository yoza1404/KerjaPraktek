import org.springframework.dao.DataIntegrityViolationException

class WitsProjectController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [witsProjectInstanceList: WitsProject.list(params), witsProjectInstanceTotal: WitsProject.count()]
    }

    def create() {
        [witsProjectInstance: new WitsProject(params)]
    }

    def save() {
        def witsProjectInstance = new WitsProject(params)
        if (!witsProjectInstance.save(flush: true)) {
            render(view: "create", model: [witsProjectInstance: witsProjectInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'witsProject.label', default: 'WitsProject'), witsProjectInstance.id])
        redirect(action: "show", id: witsProjectInstance.id)
    }

    def show(Long id) {
        def witsProjectInstance = WitsProject.get(id)
        if (!witsProjectInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'witsProject.label', default: 'WitsProject'), id])
            redirect(action: "list")
            return
        }

        [witsProjectInstance: witsProjectInstance]
    }

    def edit(Long id) {
        def witsProjectInstance = WitsProject.get(id)
        if (!witsProjectInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'witsProject.label', default: 'WitsProject'), id])
            redirect(action: "list")
            return
        }

        [witsProjectInstance: witsProjectInstance]
    }

    def update(Long id, Long version) {
        def witsProjectInstance = WitsProject.get(id)
        if (!witsProjectInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'witsProject.label', default: 'WitsProject'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (witsProjectInstance.version > version) {
                witsProjectInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'witsProject.label', default: 'WitsProject')] as Object[],
                        "Another user has updated this WitsProject while you were editing")
                render(view: "edit", model: [witsProjectInstance: witsProjectInstance])
                return
            }
        }

        witsProjectInstance.properties = params

        if (!witsProjectInstance.save(flush: true)) {
            render(view: "edit", model: [witsProjectInstance: witsProjectInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'witsProject.label', default: 'WitsProject'), witsProjectInstance.id])
        redirect(action: "show", id: witsProjectInstance.id)
    }

    def delete(Long id) {
        def witsProjectInstance = WitsProject.get(id)
        if (!witsProjectInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'witsProject.label', default: 'WitsProject'), id])
            redirect(action: "list")
            return
        }

        try {
            witsProjectInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'witsProject.label', default: 'WitsProject'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'witsProject.label', default: 'WitsProject'), id])
            redirect(action: "show", id: id)
        }
    }
}
