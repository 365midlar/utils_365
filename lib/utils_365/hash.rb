class Hash
  def deep_underscore_keys
    deep_transform_keys { |key| key.to_s.underscore.to_sym }
  end

  def deep_transform_values(&block)
    each_with_object({}) do |(k, v), g|
      g[k] = (Hash == v) ? v.deep_transform_values(&block) : yield(v)
    end
  end

  def normalize_for_json
    deep_underscore_keys.deep_transform_values do |v|
      case v
      when 'false'
        false
      when 'true'
        true
      when 'null', 'nil'
        nil
      else
        v
      end
    end
  end
end
