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
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && MouseAttachLayerMediator))
      {
         NAME = "MouseAttachLayerMediator";
      }
      
      public function MouseAttachLayerMediator(param1:String = "MouseAttachLayerMediator", param2:UIComponent = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this.component.visible = true;
         }
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            this.component.visible = false;
         }
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.ATTACH_GFX_TO_CURSOR];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:BriskDynaVo = null;
         var _loc3_:uint = 0;
         var _loc4_:* = param1.getName();
         if(_loc6_ || Boolean(_loc3_))
         {
            if(ApplicationNotificationConstants.ATTACH_GFX_TO_CURSOR === _loc4_)
            {
               addr00a7:
               §§push(0);
               if(_loc6_ || Boolean(_loc2_))
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
                  _loc2_ = param1.getBody().dynaVo as BriskDynaVo;
                  if(_loc6_ || Boolean(_loc3_))
                  {
                     _loc3_ = param1.getBody().trailColor as uint;
                     if(_loc6_ || Boolean(_loc2_))
                     {
                        this.component.setItem(_loc2_,_loc3_);
                     }
                  }
            }
            return;
         }
         §§goto(addr00a7);
      }
      
      private function get component() : MouseAttachLayerView
      {
         return super.viewComponent as MouseAttachLayerView;
      }
   }
}

