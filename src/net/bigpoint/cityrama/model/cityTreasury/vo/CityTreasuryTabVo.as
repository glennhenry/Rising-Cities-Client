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
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || _loc3_)
         {
            super();
            if(_loc4_)
            {
               this._categoryToOpen = param1;
               if(_loc4_ || Boolean(param1))
               {
                  this._packToSelect = param2;
               }
            }
         }
      }
      
      public function get categoryMenuList() : ArrayCollection
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:CityTreasuryCategoryVo = null;
         var _loc1_:ArrayCollection = new ArrayCollection();
         for each(_loc2_ in this.categories)
         {
            if(!(_loc5_ && Boolean(_loc1_)))
            {
               _loc1_.addItem(_loc2_.categoryMenu);
            }
         }
         return _loc1_;
      }
      
      public function get flavourText() : String
      {
         return this._flavourText;
      }
      
      public function set flavourText(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this._flavourText = param1;
         }
      }
      
      public function get categories() : Vector.<CityTreasuryCategoryVo>
      {
         return this._categories;
      }
      
      public function set categories(param1:Vector.<CityTreasuryCategoryVo>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._categories = param1;
         }
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

