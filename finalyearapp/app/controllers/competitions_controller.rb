class CompetitionsController < ApplicationController
helper_method :sort_column, :sort_direction
  # GET /competitions
  # GET /competitions.json
  def index
    @competitions = Competition.paginate(:page => params[:page], :per_page => 3)

	
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @competitions }
    end
  end
  

  def showCompResults
  @competition = Competition.find(params[:competition_id])		
  @fixtures = @competition.fixtures
  end 
  
  def showFixtures
  
	@competition = Competition.find(params[:competition_id])	
	@fixtures = @competition.fixtures
	
	
  end
  
   def showLeaderboard
   
	@competition = Competition.find(params[:competition_id])	
	@fixtures = @competition.fixtures
	@compTeams = @competition.teams
	#@comp = Competition.order(sort_column + " " + sort_direction)
	
  end
 
  # GET /competitions/1
  # GET /competitions/1.json
  def show

    @competitions = Competition.all
    @competition = Competition.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @competition }
    end
  end

  # GET /competitions/new
  # GET /competitions/new.json
  def new
    @competition = Competition.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @competition }
    end
  end

  # GET /competitions/1/edit
  def edit
    @competition = Competition.find(params[:id])
  end

  # POST /competitions
  # POST /competitions.json
  def create
    @competition = Competition.new(params[:competition])

    respond_to do |format|
      if @competition.save
        format.html { redirect_to @competition, notice: 'Competition was successfully created.' }
        format.json { render json: @competition, status: :created, location: @competition }
      else
        format.html { render action: "new" }
        format.json { render json: @competition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /competitions/1
  # PUT /competitions/1.json
  def update
    @competition = Competition.find(params[:id])

    respond_to do |format|
      if @competition.update_attributes(params[:competition])
        format.html { redirect_to @competition, notice: 'Competition was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @competition.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def sort_column
  Competition.column_names.include?(params[:sort]) ? params[:sort] : "Team"
  end
  
  def sort_direction
  %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

  # DELETE /competitions/1
  # DELETE /competitions/1.json
  def destroy
    @competition = Competition.find(params[:id])
    @competition.destroy

    respond_to do |format|
      format.html { redirect_to competitions_url }
      format.json { head :no_content }
    end
  end
end
