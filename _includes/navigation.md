
<nav>
  <ul>
    {% for item in site.data.navigation %}
      <li>
        <a href="{{ item.link }}"
          {%if page.url == item.link %}class="nav-item-active"{% endif %}>
          {{ item.name }}
        </a>
      </li>
    {% endfor %}
  </ul>
</nav>
