package net.bigpoint.cityrama.model.detailViews.vo
{
   public class DropDownAmountListItemVo
   {
      
      private var _categoryLabel:String;
      
      private var _categoryAmount:Number;
      
      private var _sortType:String;
      
      public function DropDownAmountListItemVo()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
         }
      }
      
      public function get categoryLabel() : String
      {
         return this._categoryLabel;
      }
      
      public function set categoryLabel(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._categoryLabel = param1;
         }
      }
      
      public function get categoryAmount() : Number
      {
         return this._categoryAmount;
      }
      
      public function set categoryAmount(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._categoryAmount = param1;
         }
      }
      
      public function get sortType() : String
      {
         return this._sortType;
      }
      
      public function set sortType(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this._sortType = param1;
         }
      }
   }
}

