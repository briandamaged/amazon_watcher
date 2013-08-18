class ProductMailer < ActionMailer::Base
  default from: "constructible.truth@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.product_mailer.target_price_reached.subject
  #
  def target_price_reached(product)
    @product = product

    mail(
      to: "constructible.truth@gmail.com",
      subject: "TPR: #{ product.title }"
    )
  end
end
