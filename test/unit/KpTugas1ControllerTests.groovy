

import org.junit.*
import grails.test.mixin.*

@TestFor(KpTugas1Controller)
@Mock(KpTugas1)
class KpTugas1ControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/kpTugas1/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.kpTugas1InstanceList.size() == 0
        assert model.kpTugas1InstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.kpTugas1Instance != null
    }

    void testSave() {
        controller.save()

        assert model.kpTugas1Instance != null
        assert view == '/kpTugas1/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/kpTugas1/show/1'
        assert controller.flash.message != null
        assert KpTugas1.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/kpTugas1/list'

        populateValidParams(params)
        def kpTugas1 = new KpTugas1(params)

        assert kpTugas1.save() != null

        params.id = kpTugas1.id

        def model = controller.show()

        assert model.kpTugas1Instance == kpTugas1
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/kpTugas1/list'

        populateValidParams(params)
        def kpTugas1 = new KpTugas1(params)

        assert kpTugas1.save() != null

        params.id = kpTugas1.id

        def model = controller.edit()

        assert model.kpTugas1Instance == kpTugas1
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/kpTugas1/list'

        response.reset()

        populateValidParams(params)
        def kpTugas1 = new KpTugas1(params)

        assert kpTugas1.save() != null

        // test invalid parameters in update
        params.id = kpTugas1.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/kpTugas1/edit"
        assert model.kpTugas1Instance != null

        kpTugas1.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/kpTugas1/show/$kpTugas1.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        kpTugas1.clearErrors()

        populateValidParams(params)
        params.id = kpTugas1.id
        params.version = -1
        controller.update()

        assert view == "/kpTugas1/edit"
        assert model.kpTugas1Instance != null
        assert model.kpTugas1Instance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/kpTugas1/list'

        response.reset()

        populateValidParams(params)
        def kpTugas1 = new KpTugas1(params)

        assert kpTugas1.save() != null
        assert KpTugas1.count() == 1

        params.id = kpTugas1.id

        controller.delete()

        assert KpTugas1.count() == 0
        assert KpTugas1.get(kpTugas1.id) == null
        assert response.redirectedUrl == '/kpTugas1/list'
    }
}
