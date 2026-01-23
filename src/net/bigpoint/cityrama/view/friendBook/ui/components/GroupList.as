package net.bigpoint.cityrama.view.friendBook.ui.components
{
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import spark.components.Group;
   import spark.components.List;
   
   public class GroupList extends Group
   {
      
      public var itemList:List;
      
      public var flavorText:LocaLabel;
      
      private var _data:*;
      
      public function GroupList()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
      
      public function get data() : *
      {
         return this._data;
      }
      
      public function set data(param1:*) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._data = param1;
         }
      }
   }
}

