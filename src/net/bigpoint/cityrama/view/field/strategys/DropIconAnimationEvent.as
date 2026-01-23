package net.bigpoint.cityrama.view.field.strategys
{
   import flash.events.Event;
   import net.bigpoint.cityrama.model.dropIcons.vo.DropIconVO;
   
   public class DropIconAnimationEvent extends Event
   {
      
      public static const DROP_FINISHED:String = "DROP_FINISHED";
      
      private var _data:DropIconVO;
      
      public function DropIconAnimationEvent(param1:String)
      {
         super(param1,false,false);
      }
      
      public function set data(param1:DropIconVO) : void
      {
         this._data = param1;
      }
      
      public function get data() : DropIconVO
      {
         return this._data;
      }
   }
}

