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
         super();
      }
      
      public function get data() : *
      {
         return this._data;
      }
      
      public function set data(param1:*) : void
      {
         this._data = param1;
      }
   }
}

