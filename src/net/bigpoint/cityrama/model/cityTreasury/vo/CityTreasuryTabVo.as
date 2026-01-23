package net.bigpoint.cityrama.model.cityTreasury.vo
{
   import mx.collections.ArrayCollection;
   
   public class CityTreasuryTabVo
   {
      
      private var _flavourText:String;
      
      private var _categories:Vector.<CityTreasuryCategoryVo>;
      
      private var _categoryToOpen:int = 0;
      
      private var _packToSelect:int = 0;
      
      public function CityTreasuryTabVo(param1:int = 0, param2:int = 0)
      {
         super();
         this._categoryToOpen = param1;
         this._packToSelect = param2;
      }
      
      public function get categoryMenuList() : ArrayCollection
      {
         var _loc2_:CityTreasuryCategoryVo = null;
         var _loc1_:ArrayCollection = new ArrayCollection();
         for each(_loc2_ in this.categories)
         {
            _loc1_.addItem(_loc2_.categoryMenu);
         }
         return _loc1_;
      }
      
      public function get flavourText() : String
      {
         return this._flavourText;
      }
      
      public function set flavourText(param1:String) : void
      {
         this._flavourText = param1;
      }
      
      public function get categories() : Vector.<CityTreasuryCategoryVo>
      {
         return this._categories;
      }
      
      public function set categories(param1:Vector.<CityTreasuryCategoryVo>) : void
      {
         this._categories = param1;
      }
      
      public function get categoryToOpen() : int
      {
         return this._categoryToOpen;
      }
      
      public function get packToSelect() : int
      {
         return this._packToSelect;
      }
   }
}

