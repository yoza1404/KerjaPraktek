import org.junit.*
import grails.test.mixin.*

@TestFor(WitsProjectController)
@Mock(WitsProject)
class WitsProjectControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/witsProject/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.witsProjectInstanceList.size() == 0
        assert model.witsProjectInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.witsProjectInstance != null
    }

    void testSave() {
        controller.save()

        assert model.witsProjectInstance != null
        assert view == '/witsProject/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/witsProject/show/1'
        assert controller.flash.message != null
        assert WitsProject.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/witsProject/list'

        populateValidParams(params)
        def witsProject = new WitsProject(params)

        assert witsProject.save() != null

        params.id = witsProject.id

        def model = controller.show()

        assert model.witsProjectInstance == witsProject
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/witsProject/list'

        populateValidParams(params)
        def witsProject = new WitsProject(params)

        assert witsProject.save() != null

        params.id = witsProject.id

        def model = controller.edit()

        assert model.witsProjectInstance == witsProject
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/witsProject/list'

        response.reset()

        populateValidParams(params)
        def witsProject = new WitsProject(params)

        assert witsProject.save() != null

        // test invalid parameters in update
        params.id = witsProject.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/witsProject/edit"
        assert model.witsProjectInstance != null

        witsProject.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/witsProject/show/$witsProject.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        witsProject.clearErrors()

        populateValidParams(params)
        params.id = witsProject.id
        params.version = -1
        controller.update()

        assert view == "/witsProject/edit"
        assert model.witsProjectInstance != null
        assert model.witsProjectInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/witsProject/list'

        response.reset()

        populateValidParams(params)
        def witsProject = new WitsProject(params)

        assert witsProject.save() != null
        assert WitsProject.count() == 1

        params.id = witsProject.id

        controller.delete()

        assert WitsProject.count() == 0
        assert WitsProject.get(witsProject.id) == null
        assert response.redirectedUrl == '/witsProject/list'
    }
}
