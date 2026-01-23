package net.bigpoint.cityrama.view.homeImprovement.hipinventory
{
   import flash.events.Event;
   import flash.geom.Point;
   import mx.core.UIComponent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.improvement.ImprovementLayerProxy;
   import net.bigpoint.cityrama.view.application.ApplicationMediator;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.ImprovementInventoryView;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components.events.ImprovementInventoryItemRendererEvent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ImprovementInventoryMediator extends Mediator
   {
      
      public static const NAME:String = "ImprovementInventoryMediator";
      
      private static const LINEID_0:uint = 0;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || ImprovementInventoryMediator)
      {
         NAME = "ImprovementInventoryMediator";
         if(_loc1_ || _loc2_)
         {
            LINEID_0 = 0;
         }
      }
      
      public function ImprovementInventoryMediator(param1:String = "ImprovementInventoryMediator", param2:UIComponent = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ImprovementLayerProxy = facade.retrieveProxy(ImprovementLayerProxy.NAME) as ImprovementLayerProxy;
         if(_loc2_ || Boolean(_loc1_))
         {
            §§push(this.component);
            if(!_loc3_)
            {
               §§pop().data = _loc1_.improvementInventoryViewVo;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  §§push(this.component);
                  if(_loc2_ || _loc2_)
                  {
                     §§push(ImprovementInventoryView.ALL_DESELECTED);
                     if(!_loc3_)
                     {
                        §§pop().addEventListener(§§pop(),this.component_ALL_DESELECTEDHandler);
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(this.component);
                           if(!_loc3_)
                           {
                              addr0091:
                              §§push(ImprovementInventoryItemRendererEvent.ITEM_OUT);
                              if(!_loc3_)
                              {
                                 §§pop().addEventListener(§§pop(),this.component_ITEM_OUTHandler);
                                 if(_loc2_ || _loc3_)
                                 {
                                    addr00b1:
                                    §§push(this.component);
                                    if(!(_loc3_ && Boolean(_loc1_)))
                                    {
                                       addr00c1:
                                       §§push(ImprovementInventoryItemRendererEvent.ITEM_OVER);
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          §§pop().addEventListener(§§pop(),this.component_ITEM_OVERHandler);
                                          if(!_loc3_)
                                          {
                                             §§goto(addr00f6);
                                          }
                                          §§goto(addr0103);
                                       }
                                       addr00f6:
                                       this.component.addEventListener(ImprovementInventoryItemRendererEvent.SELECTION_CHANGED,this.component_SELECTION_CHANGEDHandler);
                                       §§goto(addr00e4);
                                    }
                                    addr00e4:
                                    §§goto(addr00e1);
                                 }
                                 addr00e1:
                                 if(!_loc3_)
                                 {
                                    addr0103:
                                    facade.registerMediator(new UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this.component.uiInfolayerAlignmentLine],this));
                                 }
                                 return;
                              }
                              §§goto(addr00f6);
                           }
                           §§goto(addr00c1);
                        }
                        §§goto(addr00b1);
                     }
                     §§goto(addr00f6);
                  }
                  §§goto(addr0091);
               }
               §§goto(addr0103);
            }
            §§goto(addr0091);
         }
         §§goto(addr00b1);
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ApplicationMediator = null;
         _loc1_ = facade.retrieveMediator(ApplicationMediator.NAME) as ApplicationMediator;
         if(_loc2_)
         {
            _loc1_.component.mainView.inventoryTopBarView.removeElement(this.component);
         }
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.INVENTORY_IMPROVEMENTS_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:ImprovementLayerProxy = null;
         var _loc3_:* = param1.getName();
         if(!_loc4_)
         {
            if(ApplicationNotificationConstants.INVENTORY_IMPROVEMENTS_CHANGED === _loc3_)
            {
               addr0078:
               §§push(0);
               if(_loc5_ || Boolean(_loc3_))
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
                  _loc2_ = facade.retrieveProxy(ImprovementLayerProxy.NAME) as ImprovementLayerProxy;
                  if(_loc5_)
                  {
                     this.component.data = _loc2_.improvementInventoryViewVo;
                  }
            }
            return;
         }
         §§goto(addr0078);
      }
      
      public function get component() : ImprovementInventoryView
      {
         return super.getViewComponent() as ImprovementInventoryView;
      }
      
      private function component_ALL_DESELECTEDHandler(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            sendNotification(ApplicationNotificationConstants.DETACH_IMPROVEMENT_FROM_CURSOR);
         }
      }
      
      private function component_SELECTION_CHANGEDHandler(param1:ImprovementInventoryItemRendererEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            sendNotification(ApplicationNotificationConstants.ATTACH_IMPROVEMENT_TO_CURSOR,param1.selectedConfigID);
         }
      }
      
      private function component_ITEM_OVERHandler(param1:ImprovementInventoryItemRendererEvent) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         §§push(param1.selectedConfigID);
         if(!(_loc4_ && Boolean(param1)))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:Point = param1.target.localToGlobal(new Point());
         if(!(_loc4_ && Boolean(_loc3_)))
         {
            _loc3_.x += param1.target.width / 2;
            if(!(_loc4_ && Boolean(this)))
            {
               sendNotification(ApplicationNotificationConstants.SHOW_IMPROVEMENT_IN_UI_INFOLAYER,{
                  "cid":_loc2_,
                  "lineId":LINEID_0,
                  "pt":_loc3_
               });
            }
         }
      }
      
      private function component_ITEM_OUTHandler(param1:ImprovementInventoryItemRendererEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
         }
      }
   }
}

