# See the Pagy documentation: https://ddnexus.github.io/pagy/extras/metadata
# encoding: utf-8
# frozen_string_literal: true

class Pagy
  # Add a specialized backend method for pagination metadata
  module Backend ; private

    METADATA = [ :scaffold_url, :first_url, :prev_url, :page_url, :next_url, :last_url,
                 :count, :page, :items, :vars, :pages, :last, :from, :to, :prev, :next, :series ]
    METADATA << :sequels if VARS.key?(:steps)  # :steps gets defined along with the #sequels method

    VARS[:metadata] = METADATA.dup

    include Helpers

    def pagy_metadata(pagy, url=false)
      names = pagy.vars[:metadata]
      (unknown = names - METADATA).empty? or raise(VariableError.new(pagy), "unknown metadata #{unknown.inspect}")
      scaffold_url = pagy_url_for(PAGE_PLACEHOLDER, pagy, url)
      metadata = {}
      names.each do |key|
        metadata[key] = case key
                        when :scaffold_url ; scaffold_url
                        when :first_url    ; scaffold_url.sub(PAGE_PLACEHOLDER, 1.to_s)
                        when :prev_url     ; scaffold_url.sub(PAGE_PLACEHOLDER, pagy.prev.to_s)
                        when :page_url     ; scaffold_url.sub(PAGE_PLACEHOLDER, pagy.page.to_s)
                        when :next_url     ; scaffold_url.sub(PAGE_PLACEHOLDER, pagy.next.to_s)
                        when :last_url     ; scaffold_url.sub(PAGE_PLACEHOLDER, pagy.last.to_s)
                        else pagy.send(key)
                        end
      end
      metadata
    end

  end
end
