class Search
  include ActiveModel::Model

  def validation(conditions)
    name_validation(conditions[:name]) if conditions[:name]
    email_validation(conditions[:email]) if conditions[:name]
    errors.empty?
  end

  private
  def name_validation(name)
    errors[:name] << "文字を入力してください" unless name.is_a?(String)
  end

  def email_validation(email)
    errors[:email] << "文字を入力してください" unless email.is_a?(String)
  end
end
