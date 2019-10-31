module TemplateNavHelper
  def nav_context(name, title, icon: '', active_link: false, &block)
    "<li class='nav-item #{'active' if active_link}'>
      <a class='nav-link #{'collapsed' unless active_link}'
        href='#' data-toggle='collapse' 
        data-target='##{name}'
        aria-expanded='true'
        aria-controls='#{name}'>
        <i class='fas fa-fw fa-#{icon}'></i>
        <span>#{title}</span>
      </a>
      <div id='#{name}'
        class='collapse #{'show' if active_link}'
        aria-labelledby='headingTwo'
        data-parent='#accordionSidebar'>
        <div class='bg-white py-2 collapse-inner rounded'>
          #{capture(&block)}
        </div>
      </div>
    </li>".html_safe
  end
end
