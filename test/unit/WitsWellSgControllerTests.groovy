import org.junit.*
import grails.test.mixin.*

@TestFor(WitsWellSgController)
@Mock(WitsWellSg)
class WitsWellSgControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/witsWellSg/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.witsWellSgInstanceList.size() == 0
        assert model.witsWellSgInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.witsWellSgInstance != null
    }

    void testSave() {
        controller.save()

        assert model.witsWellSgInstance != null
        assert view == '/witsWellSg/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/witsWellSg/show/1'
        assert controller.flash.message != null
        assert WitsWellSg.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/witsWellSg/list'

        populateValidParams(params)
        def witsWellSg = new WitsWellSg(params)

        assert witsWellSg.save() != null

        params.id = witsWellSg.id

        def model = controller.show()

        assert model.witsWellSgInstance == witsWellSg
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/witsWellSg/list'

        populateValidParams(params)
        def witsWellSg = new WitsWellSg(params)

        assert witsWellSg.save() != null

        params.id = witsWellSg.id

        def model = controller.edit()

        assert model.witsWellSgInstance == witsWellSg
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/witsWellSg/list'

        response.reset()

        populateValidParams(params)
        def witsWellSg = new WitsWellSg(params)

        assert witsWellSg.save() != null

        // test invalid parameters in update
        params.id = witsWellSg.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/witsWellSg/edit"
        assert model.witsWellSgInstance != null

        witsWellSg.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/witsWellSg/show/$witsWellSg.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        witsWellSg.clearErrors()

        populateValidParams(params)
        params.id = witsWellSg.id
        params.version = -1
        controller.update()

        assert view == "/witsWellSg/edit"
        assert model.witsWellSgInstance != null
        assert model.witsWellSgInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/witsWellSg/list'

        response.reset()

        populateValidParams(params)
        def witsWellSg = new WitsWellSg(params)

        assert witsWellSg.save() != null
        assert WitsWellSg.count() == 1

        params.id = witsWellSg.id

        controller.delete()

        assert WitsWellSg.count() == 0
        assert WitsWellSg.get(witsWellSg.id) == null
        assert response.redirectedUrl == '/witsWellSg/list'
    }
}
