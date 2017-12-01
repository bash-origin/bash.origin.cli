
exports.forConfig = function (CONFIG) {

    return {
        "#io.pinf/interface~s1": function (API) {

            return {
                "fingerprint": function () {

                    // TODO: Expand on fingeprint
                    // TODO: Allow for different fingerprint formats
                                    
                    return process.platform;
                }
            }
        }
    }
}
