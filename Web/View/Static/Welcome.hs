module Web.View.Static.Welcome where
import Web.View.Prelude

data WelcomeView = WelcomeView

instance View WelcomeView where
    html WelcomeView = [hsx|
         <div style="background-color: #858b83; padding-top: 2rem; padding-bottom: 2rem; color:hsla(196, 13%, 96%, 1); border-radius: 4px">
              <div style="max-width: 800px; margin-left: auto; margin-right: auto">
                  <h1 style="margin-bottom: 2rem; font-size: 2rem; font-weight: 300; border-bottom: 1px solid white; padding-bottom: 0.25rem; border-color: hsla(196, 13%, 60%, 1)">
                     AbundantSolutions.dev 
                  </h1>

                  <h2 style="margin-top: 0; margin-bottom: 0rem; font-weight: 900; font-size: 3rem">
                     Doing Numbers

                  </h2>

                  <p style="margin-top: 1rem; font-size: 1.75rem; font-weight: 600; color:hsla(196, 13%, 80%, 1)">
                    &gt; &gt; =
                  </p>


                  <p style="margin-top: 1rem; font-size: 1.75rem; font-weight: 600; color:hsla(196, 13%, 80%, 1)">
                    
                 <pre>  
&lt;&#x70;&#x72;&#x65;&gt;&NewLine;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&grave;&#x2d;&sol;&#x20;&bsol;&NewLine;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&comma;&apos;&#x20;&#x20;&#x20;&#x20;&semi;&NewLine;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&comma;&apos;&#x20;&#x20;&#x20;&#x20;&#x20;&sol;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&lowbar;&lowbar;&lowbar;&lowbar;&NewLine;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&lowbar;&lowbar;&lowbar;&lowbar;&lowbar;&lowbar;&comma;&#x69;&#x20;&#x20;&#x20;&#x20;&#x20;&lowbar;&lowbar;&#x2d;&#x20;&#x20;&comma;&apos;&apos;&apos;&lowbar;&lowbar;&#x20;&#x20;&grave;&period;&lowbar;&NewLine;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&sol;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&grave;&#x2d;&comma;&#x2d;&apos;&#x20;&#x20;&grave;&#x2d;&plus;&#x20;&sol;&apos;&apos;&#x58;&#x58;&grave;&#x2d;&period;&period;&#x20;&grave;&period;&NewLine;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&sol;&#x20;&#x20;&#x20;&#x20;&comma;&apos;&#x2d;&period;&lowbar;&#x20;&#x20;&#x20;&#x20;&grave;&grave;&#x2d;&period;&#x69;&comma;&apos;&#x58;&#x58;&#x58;&#x58;&#x58;&#x58;&#x58;&#x58;&grave;&period;&#x20;&#x20;&colon;&NewLine;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&sol;&#x20;&#x20;&period;&#x2d;&#x2d;&#x20;&#x20;&period;&lowbar;&#x20;&grave;&#x2d;&comma;&lowbar;&#x20;&#x20;&#x20;&#x20;&#x20;&bsol;&#x58;&#x58;&#x58;&#x58;&#x58;&#x58;&#x58;&#x58;&#x58;&#x58;&sol;&#x20;&verbar;&NewLine;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&verbar;&#x20;&#x20;&#x20;&grave;&period;&#x20;&#x20;&grave;&period;&#x20;&#x20;&sol;&#x58;&#x58;&grave;&period;&period;&#x20;&#x20;&#x20;&bsol;&#x58;&#x58;&#x58;&#x58;&#x58;&#x58;&#x58;&#x58;&verbar;&#x20;&period;&apos;&NewLine;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&comma;&apos;&verbar;&#x20;&#x20;&period;&#x69;&gt;&#x20;&grave;&period;&#x20;&period;&apos;&#x58;&#x58;&#x58;&#x58;&#x58;&#x58;&sol;&#x2d;&period;&#x20;&#x2d;&period;&lowbar;&#x58;&#x58;&#x58;&lowbar;&sol;&#x20;&comma;&apos;&NewLine;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&comma;&apos;&#x20;&#x20;&apos;&comma;&period;&colon;&gt;&lowbar;&period;&apos;&apos;&comma;&apos;&#x58;&#x58;&#x58;&#x58;&#x58;&#x58;&sol;&#x20;&#x20;&comma;&grave;&#x2d;&period;&#x20;&grave;&period;&#x20;&lowbar;&comma;&apos;&bsol;&#x20;&#x20;&lowbar;&NewLine;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&comma;&apos;&#x20;&#x20;&#x20;&#x20;&sol;&#x20;&#x20;&#x20;&lowbar;&#x20;&grave;&period;&sol;&#x58;&#x58;&#x58;&#x58;&#x58;&#x58;&comma;&apos;&#x20;&#x20;&sol;&#x20;&sol;&#x20;&#x20;&grave;&period;&#x20;&apos;&period;&#x20;&#x20;&comma;&plus;&apos;&#x20;&grave;&period;&NewLine;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&comma;&apos;&#x20;&#x20;&#x20;&#x20;&#x20;&sol;&#x20;&#x20;&#x20;&#x2d;&lowbar;&grave;&#x20;&sol;&#x58;&#x58;&#x58;&#x58;&#x58;&#x58;&sol;&#x20;&#x20;&comma;&apos;&comma;&apos;&comma;&#x2d;&#x20;&comma;&#x20;&grave;&period;&lt;&#x2d;&apos;&#x20;&#x20;&#x20;&#x20;&comma;&apos;&NewLine;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&comma;&apos;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&sol;&#x20;&#x20;&#x20;&colon;&#x2d;&#x20;&semi;&apos;&#x58;&#x58;&#x58;&#x58;&#x58;&#x58;&sol;&#x20;&#x20;&sol;&comma;&apos;&comma;&apos;&#x20;&comma;&apos;&comma;&#x20;&#x20;&comma;&#x2d;&period;&#x20;&#x20;&#x20;&comma;&apos;&NewLine;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&comma;&apos;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&colon;&#x20;&#x20;&period;&lowbar;&#x20;&grave;&comma;&apos;&#x58;&#x58;&#x58;&#x58;&#x58;&#x58;&sol;&#x20;&comma;&apos;&sol;&comma;&apos;&lowbar;&comma;&apos;&comma;&apos;&comma;&#x2d;&apos;&#x58;&#x58;&comma;&#x2d;&comma;&apos;&NewLine;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&comma;&apos;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&lowbar;&#x20;&grave;&#x2d;&period;&#x20;&#x20;&sol;&#x58;&#x58;&#x58;&#x58;&#x58;&#x58;&#x58;&sol;&#x20;&sol;&comma;&semi;&apos;&comma;&apos;&comma;&#x2d;&apos;&comma;&apos;&#x58;&#x58;&#x58;&comma;&colon;&grave;&NewLine;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&grave;&#x20;&#x20;&#x20;&#x20;&lowbar;&comma;&apos;&#x2d;&comma;&#x2d;&#x20;&grave;&#x2d;&period;&period;&#x69;&grave;&period;&#x58;&#x58;&#x58;&#x58;&#x58;&comma;&apos;&#x20;&sol;&grave;&sol;&comma;&apos;&comma;&apos;&comma;&#x2d;&apos;&#x58;&#x58;&lowbar;&#x58;&apos;&#x20;&#x20;&grave;&comma;&NewLine;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&grave;&period;&comma;&apos;&#x20;&#x20;&#x20;&comma;&apos;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&bsol;&#x20;&#x20;&grave;&equals;&period;&#x58;&comma;&apos;&comma;&apos;&#x20;&semi;&apos;&comma;&apos;&comma;&apos;&#x58;&#x58;&comma;&comma;&apos;&bsol;&bsol;&#x20;&#x20;&comma;&colon;&NewLine;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&comma;&apos;&grave;&period;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&verbar;&comma;&semi;&apos;&#x20;&grave;&#x2d;&period;&#x20;&#x20;&#x2d;&#x20;&#x69;&comma;&apos;&#x58;&#x58;&#x58;&comma;&apos;&#x20;&#x20;&#x20;&#x20;&#x2d;&apos;&#x20;&verbar;&NewLine;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&comma;&apos;&#x20;&#x20;&#x20;&#x20;&grave;&#x20;&#x20;&#x20;&#x20;&comma;&apos;&#x20;&period;&#x69;&#x20;&#x20;&#x20;&#x20;&#x20;&grave;&#x2d;&comma;&apos;&#x58;&#x58;&#x58;&#x58;&comma;&apos;&grave;&period;&#x20;&#x20;&#x20;&#x20;&comma;&#x2d;&apos;&NewLine;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&sol;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&comma;&apos;&#x20;&comma;&apos;&#x20;&#x20;&grave;&#x2d;&period;&period;&#x20;&#x20;&#x20;&#x20;&semi;&#x2d;&comma;&comma;&semi;&apos;&#x20;&#x20;&#x20;&grave;&comma;&comma;&apos;&NewLine;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&comma;&apos;&#x20;&#x20;&#x20;&#x20;&grave;&period;&#x20;&#x20;&comma;&apos;&#x20;&comma;&#x2d;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&bsol;&#x20;&comma;&apos;&#x20;&#x20;&comma;&colon;&#x20;&#x20;&#x20;&#x20;&comma;&apos;&NewLine;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&verbar;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&comma;&apos;&#x20;&comma;&apos;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&period;&#x20;&#x20;&comma;&apos;&#x20;&#x20;&comma;&apos;&#x20;&#x20;&grave;&#x2d;&lt;&apos;&NewLine;&#x20;&#x20;&#x20;&#x20;&comma;&#x2d;&period;&lowbar;&#x20;&#x20;&#x20;&#x20;&#x20;&comma;&apos;&#x20;&comma;&apos;&#x20;&#x20;&#x20;&#x20;&#x20;&#x2d;&period;&#x20;&#x20;&comma;&#x2d;&apos;&#x20;&#x20;&comma;&apos;&NewLine;&#x20;&#x20;&comma;&apos;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&comma;&apos;&lowbar;&comma;&apos;&#x20;&#x20;&#x20;&lowbar;&#x20;&#x20;&#x20;&#x20;&comma;&grave;&apos;&#x20;&#x20;&#x20;&#x20;&verbar;&NewLine;&#x20;&bsol;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&comma;&apos;&comma;&apos;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&grave;&comma;&#x2d;&colon;&#x20;&#x20;&#x20;&#x20;&lowbar;&comma;&sol;&NewLine;&#x20;&bsol;&#x20;&#x20;&#x20;&#x20;&#x20;&comma;&apos;&#x20;&apos;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&comma;&#x2d;&apos;&#x20;&#x20;&#x20;&#x2d;&#x2d;&apos;&apos;&NewLine;&#x20;&#x20;&apos;&grave;&#x2d;&lt;&apos;&#x20;&comma;&apos;&#x20;&#x20;&#x20;&bsol;&#x20;&comma;&#x2d;&apos;&NewLine;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&verbar;&#x20;&#x20;&#x20;&#x20;&comma;&apos;&NewLine;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&bsol;&#x20;&#x20;&lowbar;&apos;&NewLine;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&apos;&#x2d;&NewLine;&NewLine;&lt;&sol;&#x70;&#x72;&#x65;&gt;
</pre> 

                  </p>




                  <p>
                      <a
                          href="https://discord.gg/D6nqfQDr"
                          style="margin-top: 2rem; background-color: #268bd2; padding: 1rem; border-radius: 3px; color: hsla(205, 69%, 98%, 1); text-decoration: none; font-weight: bold; display: inline-block; box-shadow: 0 4px 6px hsla(205, 69%, 0%, 0.08); transition: box-shadow 0.2s; transition: transform 0.2s;"
                          target="_blank"
                      >Join our community on Discord!</a>
                  </p>

                  <a href="https://developers.cardano.org/" style="margin-top: 2rem; background-color: #268bd2; padding: 1rem; border-radius: 3px; color: hsla(205, 69%, 98%, 1); text-decoration: none; font-weight: bold; display: inline-block; box-shadow: 0 4px 6px hsla(205, 69%, 0%, 0.08);  transition: box-shadow 0.2s; transition: transform 0.2s;" target="_blank">
                     Learn your Next Steps in the Documentation

                  
                     
                  </a>




                  <p>
                      <a
                          href="https://ihp.digitallyinduced.com/Slack"
                          style="margin-top: 2rem; background-color: #268bd2; padding: 1rem; border-radius: 3px; color: hsla(205, 69%, 98%, 1); text-decoration: none; font-weight: bold; display: inline-block; box-shadow: 0 4px 6px hsla(205, 69%, 0%, 0.08); transition: box-shadow 0.2s; transition: transform 0.2s;"
                          target="_blank"
                      >Questions? Leave in Comments!</a>
                  </p>
		

              </div>
         </div>

         <div style="max-width: 800px; margin-left: auto; margin-right: auto; margin-top: 4rem">
              <img src="/ihp-welcome-icon.svg" alt="/ihp-welcome-icon">
              <p style="color: hsla(196, 13%, 50%, 1); margin-top: 4rem">
                Providing Haskell Solutions
              </p>
         </div> 
|]
