import Cocoa

class ApplicationConfig: Preference {
    enum Key: String {
        case quality = "quality"
        case speed = "speed"
        case lossless = "lossless"
        case filterStrength = "filterStrength"
        case filterSharpness = "filterSharpness"
        case filterType = "filterType"
        case autoFilter = "autoFilter"
        case alphaQuality = "alphaQuality"
        case alphaFiltering = "alphaFiltering"
        case alphaCompression = "alphaCompression"
    }
    
    var quality: Float = 80 {
        willSet {
            if newValue < 0 || 100 < newValue {
                return
            }

            set(Key.quality.rawValue, value: newValue as AnyObject)
        }
    }
    
    var speed: Int = 0 {
        willSet {
            if newValue < 0 || 6 < newValue {
                return
            }

            set(Key.speed.rawValue, value: newValue as AnyObject)
        }
    }
    
    var lossless: Int = 0 {
        willSet {
            if newValue != 0 && newValue != 1 {
                return
            }

            set(Key.lossless.rawValue, value: newValue as AnyObject)
        }
    }
    
    var filterStrength: Int = 0 {
        willSet {
            if newValue < 0 || 100 < newValue {
                return
            }

            set(Key.filterStrength.rawValue, value: newValue as AnyObject)
        }
    }
    
    var filterSharpness: Int = 0 {
        willSet {
            if newValue < 0 || 7 < newValue {
                return
            }

            set(Key.filterSharpness.rawValue, value: newValue as AnyObject)
        }
    }
    
    var filterType: Int = 0 {
        willSet {
            if newValue != 0 && newValue != 1 {
                return
            }

            set(Key.filterType.rawValue, value: newValue as AnyObject)
        }
    }
    
    var autoFilter: Int = 0 {
        willSet {
            if newValue != 0 && newValue != 1 {
                return
            }

            set(Key.autoFilter.rawValue, value: newValue as AnyObject)
        }
    }
    
    var alphaQuality: Int = 100 {
        willSet {
            if newValue < 0 || 100 < newValue {
                return
            }

            set(Key.alphaQuality.rawValue, value: newValue as AnyObject)
        }
    }
    
    var alphaFiltering: Int = 1 {
        willSet {
            if newValue != 0 && newValue != 1 && newValue != 2 {
                return
            }

            set(Key.alphaFiltering.rawValue, value: newValue as AnyObject)
        }
    }
    
    var alphaCompression: Int = 1 {
        willSet {
            if newValue != 0 && newValue != 1 {
                return
            }

            set(Key.alphaCompression.rawValue, value: newValue as AnyObject)
        }
    }
    
    override init(applicationId: String) {
        super.init(applicationId: applicationId)
        
        quality = has(Key.quality.rawValue) ? get(Key.quality.rawValue) as! Float : quality
        speed = has(Key.speed.rawValue) ? get(Key.speed.rawValue) as! Int : speed
        lossless = has(Key.lossless.rawValue) ? get(Key.lossless.rawValue) as! Int : lossless
        
        filterStrength = has(Key.filterStrength.rawValue) ? get(Key.filterStrength.rawValue) as! Int : filterStrength
        filterSharpness = has(Key.filterSharpness.rawValue) ? get(Key.filterSharpness.rawValue) as! Int : filterSharpness
        filterType = has(Key.filterType.rawValue) ? get(Key.filterType.rawValue) as! Int : filterType
        autoFilter = has(Key.autoFilter.rawValue) ? get(Key.autoFilter.rawValue) as! Int : autoFilter
        
        alphaQuality = has(Key.alphaQuality.rawValue) ? get(Key.alphaQuality.rawValue) as! Int : alphaQuality
        alphaFiltering = has(Key.alphaFiltering.rawValue) ? get(Key.alphaFiltering.rawValue) as! Int : alphaFiltering
        alphaCompression = has(Key.alphaCompression.rawValue) ? get(Key.alphaCompression.rawValue) as! Int : alphaCompression
    }
    
    convenience init() {
        self.init(applicationId: "net.1000ch.WebPonize")
    }
}
