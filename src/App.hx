import js.Node;
import js.node.Fs;
import mithril.M;

class App {
    static function main() {
        js.Browser.window.onload = function() {
            js.node.ChildProcess.spawn( 'haxe', ['-version'] ).stdout.on( 'data', function(buf) {
				var version = buf.toString();
                trace('haxe $version' );
            });
            
            M.mount(js.Browser.document.body, new Index());            
        }
    }
}

class State {
    static public var text:String;
}

class Index implements Mithril {
    public function new() {}
    public function view() {
        return [
            m('h1', 'Hello from Electron/Mithril'),
            m('input', {
                oninput: e->State.text = e.target.value,
                value: State.text,
            }),
            m('div', 'State:' + State),
        ];
    }
}

