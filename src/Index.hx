import mithril.M;

class Index {
    static public function main() {

        M.mount(js.Browser.document.body, new TestMithril());

    }
}

class TestMithril implements Mithril {
    public function new() {}
    public function view() {
        return [
            m('h1', 'Hello from Mitrhil')
        ];
    }
}