package net.bigpoint.cityrama.view.field.strategys
{
   import flash.events.Event;
   import net.bigpoint.cityrama.model.dropIcons.vo.DropIconVO;
   
   public class DropIconAnimationEvent extends Event
   {
      
      public static const DROP_FINISHED:String = "DROP_FINISHED";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && DropIconAnimationEvent))
      {
         DROP_FINISHED = "DROP_FINISHED";
      }
      
      private var _data:DropIconVO;
      
      public function DropIconAnimationEvent(param1:String)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            super(param1,false,false);
         }
      }
      
      public function set data(param1:DropIconVO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._data = param1;
         }
      }
      
      public function get data() : DropIconVO
      {
         return this._data;
      }
   }
}

