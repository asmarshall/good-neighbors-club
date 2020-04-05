class BackPopulatePosts < ActiveRecord::Migration[6.0]
  POSTS = [
    {
      title: 'Pizzeria Delfina',
      body: 'Family meals for pickup or delivery',
      url: 'www.instagram.com/p/B97cc_wBwqp/',
      category: 'restaurant'
    },
    {
      title: 'Seven Hills',
      body: 'Daily dinner for two at pickup window, 25% off wines',
      url: 'www.instagram.com/p/B-AtivgBu-c/',
      category: 'restaurant'
    },
    {
      title: 'Atelier Crenn',
      body: 'Crenn Kits for pickup (brioche, soup, lasagna, and dessert)',
      url: 'www.instagram.com/p/B99SCcYBij9/',
      category: 'restaurant'
    },
    {
      title: 'Ne Timeas Restaurant Group',
      body: 'Virtual tip jar for employees of Flour + Water Pizzeria, Central Kitchen, Salumeria, and Trick Dog',
      url: 'ntrgcommunity.squarespace.com/virtualtipjar',
      category: 'restaurant'
    },
    {
      title: 'West of Pecos',
      body: 'Donations for staff',
      url: 'www.gofundme.com/f/support-the-west-of-pecos-staff?utm_source=customer&utm_medium=copy_link-tip&utm_campaign=p_cp+share-sheet',
      category: 'restaurant'
    },
    {
      title: 'Prairie',
      body: 'General store',
      url: 'shoutout.wix.com/so/29N3ZW2e9?cid=715d5e85-68e4-4242-a231-cca7f7ccbcf9#/main',
      category: 'restaurant'
    },
    {
      title: 'Lemonade',
      body: '$20 "grocery box"',
      url: 'order.thanx.com/lemonade',
      category: 'restaurant'
    },
    {
      title: 'List of Bay Area restaurants',
      body: '',
      url: 'docs.google.com/spreadsheets/d/1hM1-0-H1W2YeYd9lXELVLdCPJgl6iViwgdS1B9xzDQc/edit#gid=0',
      category: 'restaurant'
    },
    {
      title: 'Che Fico Alimentari',
      body: '$50 family meal and donate a meal',
      url: 'cheficofamilymeal.com/',
      category: 'restaurant'
    },
    {
      title: 'Tacolicious',
      body: 'Taco kits and margaritas to-go',
      url: 'www.tacolicious.com/pickup-and-delivery/',
      category: 'restaurant'
    },
    {
      title: 'Elda',
      body: 'Elda staff will be sharing “shelter in place” cocktails recipes and you can tip them via Venmo.',
      url: 'www.instagram.com/p/B99uSS2BiK7/',
      category: 'bar'
    },
    {
      title: 'Junior',
      body: 'Donations for bar staff',
      url: 'www.gofundme.com/f/junior-staff-fundraiser?utm_source=instagram&utm_campaign=p_cf+share-flow-1&utm_medium=social',
      category: 'bar'
    },
    {
      title: 'Trick Dog',
      body: 'Donations for bar staff',
      url: 'www.gofundme.com/f/a-paw-for-trick-dog?utm_source=facebook&utm_medium=social&utm_campaign=p_cp+share-sheet',
      category: 'bar'
    },
    {
      title: 'True Laurel',
      body: 'Food and cocktails for takeout',
      url: 'www.truelaurelsf.com/images/togo.pdf',
      category: 'bar'
    },
    {
      title: 'Andytown',
      body: 'Donate to send coffee/pastries to healthcare professionals; 20% off coffee beans online',
      url: 'www.andytownsf.com/donate-1',
      category: 'coffee'
    },
    {
      title: 'Lady Falcon Coffee Club',
      body: 'Free SF delivery with code BEWELLSTAYWELL',
      url: 'www.instagram.com/p/B9uucC0hTvJ/',
      category: 'coffee'
    },
    {
      title: 'Sightglass Coffee',
      body: 'Donations for staff',
      url: 'www.gofundme.com/f/relief-fund-20th-street-sightglass-baristas?utm_source=twitter&utm_medium=social&utm_campaign=m_pd+share-sheet',
      category: 'coffee'
    },
    {
      title: 'The Mill',
      body: 'Now offering pantry items (fresh veggies, flour, eggs, butter, milk, and other staples) in addition to coffee, espresso, and bread; toast is on hiatus',
      url: 'www.instagram.com/p/B-hs96XjkNK/',
      category: 'coffee'
    },
    {
      title: 'The Epicurean Trader',
      body: 'Groceries via Instacart; spirits, wine and beer through Drizly, hot meals via UberEats and Caviar. Or call to arrange for delivery to your front door.',
      url: 'www.instagram.com/p/B97oWpLhVEt/',
      category: 'boutique'
    },
    {
      title: 'SF Flower Mart',
      body: 'Donate to aid in payroll expenses',
      url: 'www.gofundme.com/f/sf-flower-mart-vendor-payroll-assistance-covid19',
      category: 'flowers'
    },
    {
      title: 'Marigold',
      body: 'Gift cards',
      url: 'www.marigoldsf.com/gift-card/gift-card',
      category: 'flowers'
    },
    {
      title: 'F.E.E.D. Sonoma Farm Boxes',
      body: 'Gemini Bottle Co is offering Farm Boxes from F.E.E.D Sonoma! The boxes are full of beautiful produce direct from Organic farms all over Sonoma County.',
      url: 'www.geminibottlesf.com/f-e-e-d-sonoma-farm-boxes-more/',
      category: 'farm'
    },
    {
      title: 'Save our faves',
      body: 'Your favorite Bay Area restaurant might close forever. Help save it. Gift cards help "flatten the curve" of lost income from COVID-19.',
      url: 'saveourfaves.org/',
      category: 'general_ways_to_help'
    },
    {
      title: "Alietum's curated guide",
      body: '',
      url: 'www.instagram.com/p/B92jwy-hpWK/',
      category: 'general_ways_to_help'
    },
    {
      title: 'SF community volunteer forum',
      body: '(dog walking, grocery shopping, etc for elders/high risk)',
      url: 'www.sfcommunitysupport.org/?fbclid=IwAR3G7X_90JhaCzuOjXE1kbIiTvFcemD5aRenE8rvQXDg5BP5-i_aEUqFnPU',
      category: 'general_ways_to_help'
    },
    {
      title: 'Small Business Relief Fund',
      body: '',
      url: 'www.gofundme.com/f/smallbusinessrelieffund?utm_source=email&utm_medium=marketing&utm_content=announcement&utm_campaign=032520_Small_Biz_Initiative_text_link',
      category: 'general_ways_to_help'
    },
    {
      title: 'Minima-Maxima',
      body: '',
      url: 'www.instagram.com/p/B95K0_KhozD/',
      category: 'general_ways_to_help'
    },
    {
      title: 'Faire',
      body: '',
      url: 'blog.faire.com/thestorefront/immediate-steps-for-local-retailers-during-covid-19/',
      category: 'resources'
    },
    {
      title: 'Wellstruck',
      body: '',
      url: 'www.wellstruck.com/coronavirus',
      category: 'resources'
    },
    {
      title: 'Gusto',
      body: '',
      url: '',
      category: 'resources'
    },
    {
      title: 'Self care is for everyone',
      body: '',
      url: 'selfcareisforeveryone.com/?utm_source=facebookads&utm_medium=US+-+18-44+-+Happiness+-+Copy+2&utm_campaign=Image+-+UGC2+-+10%25+-+Copy+2',
      category: 'mental_health'
    },
    {
      title: 'Yale - how to be happier in your daily life',
      body: '',
      url: 'www.businessinsider.com/coursera-yale-science-of-wellbeing-free-course-review-overview',
      category: 'mental_health'
    },
    {
      title: 'Down Dog App',
      body: 'Free till May 1 (or June 1 for all students and teachers). Fitness app! Great for yoga, HIIT, and barre all from home.',
      url: 'www.downdogapp.com',
      category: 'fitness'
    },
    {
      title: 'Peloton App',
      body: 'Try the Peloton App at home, now free for 90 days.',
      url: 'www.onepeloton.com/app',
      category: 'fitness'
    },
    {
      title: 'Uforia Studios',
      body: 'Uforia is offering their amazing hip hop and GRIT classes online for $6.99 a class.',
      url: 'uforiastudios.com/schedule/nob-hill-schedule/',
      category: 'fitness'
    }
  ]

  def up
    POSTS.each do |post|
      Post.create!(post)
    end
  end
end
