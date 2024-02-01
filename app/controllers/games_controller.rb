class GamesController < ApplicationController
  before_action :set_game, only: %i[ show edit update destroy ]
  before_action :set_game_data, only: %i[ new edit ]

  # GET /games or /games.json
  def index
    @games = Game.all
  end

  # GET /games/1 or /games/1.json
  def show
  end

  # GET /games/new
  def new
    @game = Game.new
  end

  # GET /games/1/edit
  def edit
  end

  # POST /games or /games.json
  def create
    @game = Game.new(game_params)

    respond_to do |format|
      if @game.save
        format.html { redirect_to game_url(@game), notice: "Game was successfully created." }
        format.json { render :show, status: :created, location: @game }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /games/1 or /games/1.json
  def update
    respond_to do |format|
      if @game.update(game_params)
        format.html { redirect_to game_url(@game), notice: "Game was successfully updated." }
        format.json { render :show, status: :ok, location: @game }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /games/1 or /games/1.json
  def destroy
    @game.destroy!

    respond_to do |format|
      format.html { redirect_to games_url, notice: "Game was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def game_params
      params.require(:game).permit(:title, :system, :description, :themes, :image, :session_min_duration, :session_max_duration, :player_age_range, :price, :safety_details, :combat, :exploration, :roleplay, :experience, :platforms, :books_allowed, :player_preparation)
    end

    def set_game_systems
      @game_systems = ["Dungeons & Dragons 5E",
                       "Pathfinder 2E",
                       "Call of Cthulhu",
                       "Cyberpunk 2020", 
                       "Shadowrun", 
                       "Vampire: The Masquerade", 
                       "Warhammer 40K", 
                       "Star Wars", 
                       "GURPS", 
                       "Fate", 
                       "Savage Worlds",
                       "World of Darkness", 
                       "Other"
                      ]
    end

    def set_game_themes
      @game_themes = ["Fantasy",
                      "Horror",
                      "Sci-Fi",
                      "Cyberpunk",
                      "Steampunk",
                      "Superhero",
                      "Western",
                      "Historical",
                      "Mystery",
                      "Thriller",
                      "Comedy",
                      "Romance",
                      "Drama",
                      "Action",
                      "Adventure",
                      "Other"
                     ]
    end

    def set_game_platforms
      @game_platforms = ["FoundryVTT",
                         "Roll20",
                         "Fantasy Grounds",
                         "Discord",
                         "Zoom",
                         "Skype",
                         "Google Meet",
                         "Tabletop Simulator",
                         "Tabletopia",
                         "Other"
                        ]
    end

    def set_player_age_ranges
      @player_age_ranges = ["18+", "13+", "All Ages"]
    end

    def set_amount_of
      @amount_of = ["None", "Some", "All"]
    end

    def set_amount_of_experience
      @amount_of_experience = ["None", "Beginner", "Intermediate", "Advanced", "Veteran"]
    end

    def set_game_data
      set_game_systems
      set_game_themes
      set_game_platforms
      set_player_age_ranges
      set_amount_of
      set_amount_of_experience
    end
end
