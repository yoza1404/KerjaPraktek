import org.springframework.dao.DataIntegrityViolationException

class WitsWellSgController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [witsWellSgInstanceList: WitsWellSg.list(params), witsWellSgInstanceTotal: WitsWellSg.count()]
    }

    def create() {
        [witsWellSgInstance: new WitsWellSg(params)]
    }

    def save() {
        def witsWellSgInstance = new WitsWellSg(params)
        if (!witsWellSgInstance.save(flush: true)) {
            render(view: "create", model: [witsWellSgInstance: witsWellSgInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'witsWellSg.label', default: 'WitsWellSg'), witsWellSgInstance.id])
        redirect(action: "show", id: witsWellSgInstance.id)
    }

    def show(Long id) {
        def witsWellSgInstance = WitsWellSg.get(id)
        if (!witsWellSgInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'witsWellSg.label', default: 'WitsWellSg'), id])
            redirect(action: "list")
            return
        }

        [witsWellSgInstance: witsWellSgInstance]
    }

    def edit(Long id) {
        def witsWellSgInstance = WitsWellSg.get(id)
        if (!witsWellSgInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'witsWellSg.label', default: 'WitsWellSg'), id])
            redirect(action: "list")
            return
        }

        [witsWellSgInstance: witsWellSgInstance]
    }

    def update(Long id, Long version) {
        def witsWellSgInstance = WitsWellSg.get(id)
        if (!witsWellSgInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'witsWellSg.label', default: 'WitsWellSg'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (witsWellSgInstance.version > version) {
                witsWellSgInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'witsWellSg.label', default: 'WitsWellSg')] as Object[],
                        "Another user has updated this WitsWellSg while you were editing")
                render(view: "edit", model: [witsWellSgInstance: witsWellSgInstance])
                return
            }
        }

        witsWellSgInstance.properties = params

        if (!witsWellSgInstance.save(flush: true)) {
            render(view: "edit", model: [witsWellSgInstance: witsWellSgInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'witsWellSg.label', default: 'WitsWellSg'), witsWellSgInstance.id])
        redirect(action: "show", id: witsWellSgInstance.id)
    }

    def delete(Long id) {
        def witsWellSgInstance = WitsWellSg.get(id)
        if (!witsWellSgInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'witsWellSg.label', default: 'WitsWellSg'), id])
            redirect(action: "list")
            return
        }

        try {
            witsWellSgInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'witsWellSg.label', default: 'WitsWellSg'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'witsWellSg.label', default: 'WitsWellSg'), id])
            redirect(action: "show", id: id)
        }
    }
}
