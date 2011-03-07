module VagrantApache2
  class Command < Vagrant::Command::Base
    register "apache2", "Run a apache2 command inside the VM environment"
    argument :apache2_command, :type => :string, :required => false, :desc => "The apache2 command to run on the VM"
    class_option :cwd, :type => :string, :default => nil

    # Executes the given rake command on the VMs that are represented
    # by this environment.
    def execute
      target_vms.each { |vm| execute_on_vm(vm, apache2_command) }
    end

    protected

    # Executes a command on a specific VM.
    def execute_on_vm(vm, command)
      vm.env.actions.run(:apache2, "apache2.command" => command)
    end
  end
end
