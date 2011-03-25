class Raid
  def self.check_aoe(disk_id)
    exports = []
    _, res = systemu "aoe-stat"
    lines = res.split("\n")
    lines.each do |line|
      l = line.split(" ")
      if l.first =~ /e#{disk_id}\.\d/
        exports << l.first if l[4] == 'up'
      end
    end

    exports
  end
 
  def self.check_raid(disk_id)
    _, res = systemu "cat /proc/mdstat | grep md#{disk_id}"
    lines = res.split("\n")
    return :stopped if lines.blank?

    line = lines.first
    return line.split(" ")[2] == "active" ? :active : :failed
  end
  
  def self.stop_raid(disk_id)
    _, out, err = systemu "mdadm -S /dev/md#{disk_id}"
    return err.blank?
  end
  
  def self.assemble_raid(disk_id, exports)
    devices = exports.map {|e| "/dev/etherd/" + e}
    _, out, err = systemu "mdadm --assemble /dev/md#{disk_id} " + devices.join(' ') + " --run"
    puts out
    puts err
    err.blank? || err.include?("has been started")
  end
end