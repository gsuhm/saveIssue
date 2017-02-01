package saveissue

class SaveTestController {

    def index() {



        [test: Test.findAll()]

    }

    def delete() {

        def a = Test.findById(params.id)
        a.delete()
        redirect controller: 'SaveTest'

    }
    def add() {

        def a = Test.findById(params.id)
        if (!a) {
            a = new Test(a: new Date().toString())
            a.save(failOnError: true)
        }
        redirect controller: 'SaveTest'

    }
}
