if (!self.__WB_pmw) {
    self.__WB_pmw = function(V_ARG_src2) {
        this.__WB_source = V_ARG_src2;
        return this;
    };
};
{
    let document = self._wb_wombat && self._wb_wombat.local_init && self._wb_wombat.local_init("document") || self.document;
    if (document.addEventListener) {
        document.addEventListener("DOMContentLoaded", function() {
            loaded();
        });
    } else {
        if (document.attachEvent) {
            document.attachEvent("onreadystatechange", function() {
                loaded();
            });
        }
    };

    function loaded() {
        setInterval(loop, 80);
    }
    var x = 2;
    var titleText = ["wxp.lol", "wxp", "wxp.lol3"];

    function loop() {
        document.getElementsByTagName("title")[0].innerHTML = titleText[x++ % titleText.length];
    }
}
