package net.bigpoint.cityrama.view.cursor
{
   import mx.core.UIComponent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.view.application.ui.components.MouseAttachLayerView;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class MouseAttachLayerMediator extends Mediator
   {
      
      public static const NAME:String = "MouseAttachLayerMediator";
      
      public function MouseAttachLayerMediator(param1:String = "MouseAttachLayerMediator", param2:UIComponent = null)
      {
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
         this.component.visible = true;
      }
      
      override public function onRemove() : void
      {
         this.component.visible = false;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.ATTACH_GFX_TO_CURSOR];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _loc2_:BriskDynaVo = null;
         var _loc3_:uint = 0;
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.ATTACH_GFX_TO_CURSOR:
               _loc2_ = param1.getBody().dynaVo as BriskDynaVo;
               _loc3_ = param1.getBody().trailColor as uint;
               this.component.setItem(_loc2_,_loc3_);
         }
      }
      
      private function get component() : MouseAttachLayerView
      {
         return super.viewComponent as MouseAttachLayerView;
      }
   }
}

