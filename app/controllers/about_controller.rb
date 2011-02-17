class AboutController < ApplicationController
  caches_page :first, :fun_facts, :history, :mission
end