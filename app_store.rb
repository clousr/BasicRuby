module AppStore
  App = Struct.new(:name, :developer, :version)
  APPS = [App.new(:chat, :facebook, 2.0),
  App.new(:twitter, :twitter, 5.8),
  App.new(:weather, :yahoo, 10.15)]

  def self.find_app(name)#find app in install function in gadget6
    APPS.find {|app| app.name == name}# must be called on the array, not the struct
  end
end
