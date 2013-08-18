

AmazonMonitor::Application.configure do

	cfg = YAML.load_file(File.join(Rails.root, "config", "email.yml"))[Rails.env]


	if cfg['delivery_method'] == :smtp
	    config.action_mailer.delivery_method = :smtp
	    config.action_mailer.smtp_settings   = cfg['smtp_settings'].symbolize_keys
	else
		raise ArgumentError, "Unsupported e-mail delivery method: #{cfg['delivery_method']}"
	end

end

