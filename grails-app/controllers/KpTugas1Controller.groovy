import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException


class KpTugas1Controller {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [kpTugas1InstanceList: KpTugas1.list(params), kpTugas1InstanceTotal: KpTugas1.count()]
    }

    def create() {
        [kpTugas1Instance: new KpTugas1(params)]
    }

    def save() {
        def kpTugas1Instance = new KpTugas1(params)
        if (!kpTugas1Instance.save(flush: true)) {
            render(view: "create", model: [kpTugas1Instance: kpTugas1Instance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'kpTugas1.label', default: 'KpTugas1'), kpTugas1Instance.id])
        redirect(action: "show", id: kpTugas1Instance.id)
    }

    def show(Long id) {
        def kpTugas1Instance = KpTugas1.get(id)
        if (!kpTugas1Instance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'kpTugas1.label', default: 'KpTugas1'), id])
            redirect(action: "list")
            return
        }

        [kpTugas1Instance: kpTugas1Instance]
    }

    def edit(Long id) {
        def kpTugas1Instance = KpTugas1.get(id)
        if (!kpTugas1Instance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'kpTugas1.label', default: 'KpTugas1'), id])
            redirect(action: "list")
            return
        }

        [kpTugas1Instance: kpTugas1Instance]
    }

    def update(Long id, Long version) {
        def kpTugas1Instance = KpTugas1.get(id)
        if (!kpTugas1Instance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'kpTugas1.label', default: 'KpTugas1'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (kpTugas1Instance.version > version) {
                kpTugas1Instance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'kpTugas1.label', default: 'KpTugas1')] as Object[],
                          "Another user has updated this KpTugas1 while you were editing")
                render(view: "edit", model: [kpTugas1Instance: kpTugas1Instance])
                return
            }
        }

        kpTugas1Instance.properties = params

        if (!kpTugas1Instance.save(flush: true)) {
            render(view: "edit", model: [kpTugas1Instance: kpTugas1Instance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'kpTugas1.label', default: 'KpTugas1'), kpTugas1Instance.id])
        redirect(action: "show", id: kpTugas1Instance.id)
    }

    def delete(Long id) {
        def kpTugas1Instance = KpTugas1.get(id)
        if (!kpTugas1Instance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'kpTugas1.label', default: 'KpTugas1'), id])
            redirect(action: "list")
            return
        }

        try {
            kpTugas1Instance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'kpTugas1.label', default: 'KpTugas1'), id])
            ç
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'kpTugas1.label', default: 'KpTugas1'), id])
            redirect(action: "show", id: id)
        }
    }

    def cancel() {
        flash.message = "Cancel"
        redirect(action: "list")
    }

    def sgIpPing(){
        def ipIsUp = 0
        def b = params.ipAddress
        /*a = a.split("\\:")
        def String b = a[0].toString()
        println b
        if (b == null) {
            b = "google.com"
        }*/

        try {
            def cmd = """ping -c 3 """ + b
            println cmd

            def proc= cmd.execute()
            proc.waitFor()
            ipIsUp=proc.exitValue()

            println ipIsUp
            println proc.in.text

        }
        catch(Error e)
        {
            println e
        }

        def String kembali
        if (ipIsUp==0) {
            kembali = b + " is available."
            flash.message = b + " is available."
        } else {
            kembali = b + " is not available."
        }
        def ads = [kembali:kembali]
        println ads
        //render kembali as JSON
        render ads as JSON



    }
}
