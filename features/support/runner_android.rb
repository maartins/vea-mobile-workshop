require_relative 'adb'
class RunnerAndroid

  def initialize
  
  end

  def run(device, options)
    options = options
  device = device
  device_name = Adb.device_name(device)
    command = "export curdevice=#{device} ; " \
    "export apk=#{options['apk']} ; " \
    "export port=#{options['port']} ; " \
    "export boot_port=#{options['boot_port']} ; " \
    "cucumber #{options['tags']} --format #{options['report']} " \
    "-o reports/#{device_name}.#{options['report']}"
    p command
    `#{command} 2>&1 &`
  end
end

# temp = RunnerAndroid.new('00bbb8a0ec4f9f25', {'apk' => 'apk', 'port' => '32432', 'boot_port' => '45533', 'tags' => '@tags', 'report' => 'report'})
# temp.run
