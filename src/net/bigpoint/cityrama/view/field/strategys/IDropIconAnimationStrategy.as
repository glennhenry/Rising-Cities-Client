package net.bigpoint.cityrama.view.field.strategys
{
   import flash.display.DisplayObject;
   import flash.events.IEventDispatcher;
   import net.bigpoint.cityrama.model.dropIcons.vo.DropIconVO;
   import org.puremvc.as3.interfaces.IFacade;
   
   public interface IDropIconAnimationStrategy extends IEventDispatcher
   {
      
      function drop(param1:DisplayObject, param2:DropIconVO) : void;
      
      function prepare(param1:IFacade) : void;
      
      function get finishEvent() : DropIconAnimationEvent;
   }
}

