class ReturnController < ApplicationController
  def Return
    @cust = Customer.find_by_customer_name(current_user.email)
    @flag1=0
    @customer=Customer.where(customer_name: current_user.email)
    @count=@customer.count
    if @count==0
      @flag1=1
      flash[:notice]="there are no books to be returned by you :(";
    else
      @return_books=@cust.book_name.split(',')
      @due_date=@cust.due_date
    end
  end

  def confirm_return
    @cust=Customer.find_by_customer_name(current_user.email)
    cust_selected_books = @cust.book_name.split(',')
    @count=cust_selected_books.count
    @tick_book =params[:category]
    @tick_book.each{ |val| cust_selected_books.delete(val) }
    @cust.update_attribute(:book_name,cust_selected_books.join(','))
    @count1=@cust.book_name.split(',').count
    if @count1==0
      @cust.destroy
      @cust.save
    end
  end

  def Fine
    @cust=Customer.find_by_customer_name(current_user.email)
    @start_date=Date.parse(@cust.issue_date)
    @end_date=Date.parse(@cust.due_date)
    @diff=(end_date-start_date).to_i
    @amount=@diff*5
  end
end
