class AboutController < ApplicationController
  caches_page :contact_us, :first, :fun_facts, :history, :mission
end