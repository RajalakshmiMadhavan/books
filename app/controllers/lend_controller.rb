class LendController < ApplicationController
  def Lend
    @flag=0
    @count=Customer.where(customer_name: current_user.email).count
    if @count==1
        @flag=1
        flash[:notice]="only after returning books,you can lend the next set of books";
      end
    end

    def category_list
      @b=Book.select(:category).uniq
    end

    def authors_list
      @b=Book.select(:authors).uniq
    end

    def category
      @category=params[:category]
      @book=Book.where(category: @category)
    end

    def authors
      @book=Book.where(authors: params[:authors])
    end

    def next1
      @flag=0
      @user=User.find(current_user.id)
      @customer=Customer.new
      @customer.serial_no=@user.id
      @customer.customer_name=@user.email
      @selected_books =[]
      @my_books=[]
      @my_books=params[:category]
      @my_books_s=" "
      @my_books.each do |book|
        @my_books_s+=book
      end
      @books_count=params[:category].count
      if @books_count>2
        @flag=1
        flash[:notice]="you are not allowed to take more than two books";
      else
        params[:category].each do |val|
          @selected_books.push(Book.where(book_name: val).first)
        end
        @selected_books_s=" "
        @selected_books.each do |book|
          @selected_books_s+=book.book_name << ","
        end
        @count=Customer.where(customer_name: current_user.email).count
        @user=User.find_by_email(current_user.email)
        if @count==0
          @cust=Customer.new(:serial_no => @customer.serial_no , :customer_name => @customer.customer_name ,:book_name => @selected_books_s,:issue_date => Time.now,:due_date => Time.now + 10.days)
          @cust.save
          @user.my_books=@my_books_s
          @user.save
        else
          @cust=Customer.find_by_customer_name(current_user.email)
          @cust.book_name+=@selected_books_s<< ","
          @cust.save
          @user.my_books+=@my_books_s
          @user.save
        end
      end
    end

    def next2
      @flag=0
      @user=User.find(current_user.id)
      @customer=Customer.new
      @customer.serial_no=@user.id
      @customer.customer_name=@user.email
      @selected_books =[]
      @my_books=[]
      @my_books=params[:authors]
      @my_books_s=" "
      @my_books.each do |book|
        @my_books_s+=book
      end
      @books_count=params[:authors].count
      if @books_count>2
        @flag=1
        flash[:notice]="you are not allowed to take more than two books";
      else
        params[:authors].each do |val|
          @selected_books.push(Book.where(book_name: val).first)
        end
        @selected_books_s=" "
        @selected_books.each do |book|
          @selected_books_s+=book.book_name << ","
        end
        @count=Customer.where(customer_name: current_user.email).count
        @user=User.find_by_email(current_user.email)
        if @count==0
          @cust=Customer.new(:serial_no => @customer.serial_no , :customer_name => @customer.customer_name ,:book_name => @selected_books_s,:issue_date => Time.now,:due_date => Time.now + 10.days)
          @cust.save
          @user.my_books=@my_books_s
          @user.save
        else
          @cust=Customer.find_by_customer_name(current_user.email)
          @cust.book_name+=@selected_books_s<< ","
          @cust.save
          @user.my_books+=@my_books_s
          @user.save
        end
      end
    end
end
