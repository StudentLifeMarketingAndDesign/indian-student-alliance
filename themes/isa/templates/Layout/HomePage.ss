<div class="hero">
  <% include Header %>
        <div class="container clearfix">

        <% if HomePageHeroFeatures.limit(2) %>
            <div class="hero-article-wrapper">

                <% loop HomePageHeroFeatures %>
                <div class="hero-article clearfix">
                    <% if $Image %>
                      <% if $UseExternalLink %>
                        <a href="$ExternalLink" target="_blank"><img src="$Image.URL" alt=""></a>
                      <% else %>
                          <a href="$AssociatedPage.Link"><img src="$Image.URL" alt=""></a>
                        <% end_if %>
                    <% end_if %>
                    <h3 class="hero-title">
                      <% if $UseExternalLink %>
                        <a href="$ExternalLink" target="_blank">$Title</a>
                      <% else %>
                        <a href="$AssociatedPage.Link">$Title</a>
                      <% end_if %>
                    </h3>
                    <div class="hero-content">$Content</div>
                    <% if $UseExternalLink %>
                      <a href="$ExternalLink" target="_blank" class="hero-link">Read More</a>
                    <% else %>
                      <a href="$AssociatedPage.Link" class="hero-link">Read More</a>
                    <% end_if %>
                </div>
              <% end_loop %>


            </div>
         <% end_if %>
          <div class="hero-text">
                <h2 class="blocktext">Welcome to the Indian Student Alliance.</h2>
                <ul>
                    <li><a href="/vp-for-student-life/about/">Our Events</a></li>
                    <li><a href="/vp-for-student-life/staff/">Meet Us</a></li>
                    <li><a href="https://www.givetoiowa.org/GiveToIowa/WebObjects/GiveToIowa.woa/wa/goTo?area=studentlife">Learn about the Community</a></li>
                </ul>
            </div>
        </div>

    </div>
  <section class="home-highlights">
        <div class="container clearfix">
          <% loop HomePageFeatures %>
              <div class="module">
                  <div class="media">
                  <% if $YouTubeEmbed %>
                    $YouTubeEmbed
                  <% else %>
                      <a href="$AssociatedPage.Link">
                          <img src="$Image.CroppedImage(350,197).URL" alt="$Title">
                      </a>
                  <% end_if %>
                  </div>
                  <div class="inner">
                      <h3><a href="$AssociatedPage.Link">$Title</a></h3>
                        $Content
                  </div>
              </div>
           <% end_loop %>
         </div><!-- end .container -->
    </section>

    <% include TopicsAndNews %>
