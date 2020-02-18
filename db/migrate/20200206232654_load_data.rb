class LoadData < ActiveRecord::Migration[6.0]
  def up
    # Create initial users.
    jb = User.new(first_name: 'Justin', last_name: 'Bieber')
    jb.save(validate: false)
    ph = User.new(first_name: 'Paris', last_name: 'Hilton')
    ph.save(validate: false)
    mc = User.new(first_name: 'Miley', last_name: 'Cyrus')
    mc.save(validate: false)
    bo = User.new(first_name: 'Barack', last_name: 'Obama')
    bo.save(validate: false)
    sc = User.new(first_name: 'Santa', last_name: 'Claus')
    sc.save(validate: false)
    jo = User.new(first_name: 'John', last_name: 'Ousterhout')
    jo.save(validate: false)

    photo1 = Photo.new(date_time: '2012-08-30 10:44:23',
                       file_name: 'ouster.jpg')
    photo1.user = jo
    photo1.save(validate: false)

    photo2 = Photo.new(:date_time => "2009-09-13 20:00:00",
                       :file_name => "bieber1.jpg")
    photo2.user = jb
    photo2.save(:validate => false)
    photo3 = Photo.new(:date_time => "2009-09-13 20:05:03",
                       :file_name => "bieber2.jpg")
    photo3.user = jb
    photo3.save(:validate => false)

    photo4 = Photo.new(:date_time => "2013-11-18 18:02:00",
                       :file_name => "hilton1.jpg")
    photo4.user = ph
    photo4.save(:validate => false)
    photo5 = Photo.new(:date_time => "2013-09-20 17:30:00",
                       :file_name => "hilton2.jpg")
    photo5.user = ph
    photo5.save(:validate => false)

    photo6 = Photo.new(:date_time => "2009-07-10 16:02:49",
                       :file_name => "obama1.jpg")
    photo6.user = bo
    photo6.save(:validate => false)
    photo7 = Photo.new(:date_time => "2010-03-18 23:48:00",
                       :file_name => "obama2.jpg")
    photo7.user = bo
    photo7.save(:validate => false)
    photo8 = Photo.new(:date_time => "2010-08-30 14:26:00",
                       :file_name => "obama3.jpg")
    photo8.user = bo
    photo8.save(:validate => false)

    photo9 = Photo.new(:date_time => "2013-12-03 09:02:00",
                       :file_name => "megan1.jpg")
    photo9.user = mc
    photo9.save(:validate => false)
    photo10 = Photo.new(:date_time => "2013-12-03 09:03:00",
                        :file_name => "megan2.jpg")
    photo10.user = mc
    photo10.save(:validate => false)


    photo11 = Photo.new(:date_time => "2013-09-04 09:16:32",
                        :file_name => "santa1.jpg")
    photo11.user = sc
    photo11.save(:validate => false)

    photo12 = Photo.new(:date_time => "2013-10-16 17:12:28",
                        :file_name => "obama4.jpg")
    photo12.user = bo
    photo12.save(:validate => false)

    # Create initial comments.
    comment = Comment.new(date_time: '2012-09-02 14:01:00',
                          comment_text: 'Learning new programming languages is hard...')
    comment.user = jo
    comment.photo = photo1
    comment.save(validate: false)

    comment = Comment.new(date_time: '2013-09-06 14:02:00',
                          comment_text: 'This is another comment, with a bit more text; ' \
                              'if the text gets long enough, does it wrap properly ' \
                              'from line to line?')
    comment.user = jo
    comment.photo = photo1
    comment.save(validate: false)

    comment = Comment.new(date_time: '2013-09-08 14:06:00',
                          comment_text: 'If you see this text in <b>boldface</b> ' \
                              "then HTML escaping isn't working properly.")
    comment.user = jo
    comment.photo = photo1
    comment.save(validate: false)

    comment = Comment.new(:date_time => "2009-09-14 18:07:00",
                          :comment_text => "No, people, she is *not* my mom.  She's my date.")
    comment.user = jb
    comment.photo = photo2
    comment.save(:validate => false)

    comment = Comment.new(:date_time => "2013-11-28 17:45:13",
                          :comment_text => "I came up with lots of comments for this photo, " +
                              "but unfortunately none of them are printable.")
    comment.user = jo
    comment.photo = photo5
    comment.save(:validate => false)

    comment = Comment.new(:date_time => "2013-11-02 14:07:00",
                          :comment_text => "Hey Barack, great form! Can u " +
                              "give me some bowling tips? xxoo Paris")
    comment.user = ph
    comment.photo = photo7
    comment.save(:validate => false)
    comment = Comment.new(:date_time => "2013-11-02 14:07:00",
                          :comment_text => "Sure, let's get together when Lindsay gets out of " +
                              "rehab and I get healthcare.gov working.")
    comment.user = bo
    comment.photo = photo7
    comment.save(:validate => false)

    comment = Comment.new(:date_time => "2010-09-06 13:59:33",
                          :comment_text => "We're off to a Justin Bieber concert")
    comment.user = bo
    comment.photo = photo8
    comment.save(:validate => false)

    comment = Comment.new(:date_time => "2013-10-16 18:04:55",
                          :comment_text => "He kept trying to tell me that healthcare.gov is " +
                              "fixed, but I could see as plain as day that they forgot a </div>. " +
                              "Can anyone tell me why we're building this site in Java " +
                              "instead of Rails?")
    comment.user = bo
    comment.photo = photo12
    comment.save(:validate => false)
    comment = Comment.new(:date_time => "2013-12-04 13:12:00",
                          :comment_text => "To all my fans, I just want to say how I" +
                              "am all about that base.")
    comment.user = mc
    comment.photo = photo10
    comment.save(:validate => false)

    comment = Comment.new(:date_time => "2013-09-04 10:14:32",
                          :comment_text => "I'm going to be watching how well you do in CS 6320!")
    comment.user = sc
    comment.photo = photo11
    comment.save(:validate => false)
  end

  def down
    User.delete_all
  end
end
