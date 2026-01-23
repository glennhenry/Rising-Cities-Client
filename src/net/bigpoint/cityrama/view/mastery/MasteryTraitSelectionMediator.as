package net.bigpoint.cityrama.view.mastery
{
   import flash.events.Event;
   import mx.collections.ArrayCollection;
   import mx.events.ItemClickEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.quest.ClickTaskNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldInteractiveProxy;
   import net.bigpoint.cityrama.model.mastery.MasteryBonusTraitGroupVo;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.mastery.components.MasteryTraitItemRenderer;
   import net.bigpoint.cityrama.view.mastery.components.MasteryTraitSelectionLayer;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class MasteryTraitSelectionMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "MasteryTraitSelectionMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc1_))
      {
         NAME = "MasteryTraitSelectionMediator";
      }
      
      public function MasteryTraitSelectionMediator(param1:String, param2:MasteryTraitSelectionLayer)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            super(param1,param2);
         }
      }
      
      private function addEventListeners() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this.component);
            if(!(_loc1_ && _loc2_))
            {
               §§pop().traitList.addEventListener(MasteryTraitItemRenderer.TRAIT_SELECTED,this.traitSelectedHandler);
               if(_loc2_ || _loc1_)
               {
                  addr0053:
                  this.component.addEventListener(Event.CLOSE,this.closeHandler);
               }
               §§goto(addr005f);
            }
            §§goto(addr0053);
         }
         addr005f:
      }
      
      private function removeEventListeners() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            §§push(this.component);
            if(!(_loc1_ && _loc2_))
            {
               §§pop().traitList.removeEventListener(MasteryTraitItemRenderer.TRAIT_SELECTED,this.traitSelectedHandler);
               if(_loc2_)
               {
                  addr0053:
                  this.component.addEventListener(Event.CLOSE,this.closeHandler);
                  addr004f:
               }
               return;
            }
            §§goto(addr0053);
         }
         §§goto(addr004f);
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super.onRegister();
            if(!(_loc2_ && Boolean(this)))
            {
               addr002f:
               this.addEventListeners();
            }
            return;
         }
         §§goto(addr002f);
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.onRemove();
            if(_loc2_)
            {
               this.removeEventListeners();
            }
         }
      }
      
      private function get component() : MasteryTraitSelectionLayer
      {
         return this.viewComponent as MasteryTraitSelectionLayer;
      }
      
      private function traitSelectedHandler(param1:ItemClickEvent) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:Object = null;
         var _loc2_:PlayfieldInteractiveProxy = facade.retrieveProxy(PlayfieldInteractiveProxy.NAME) as PlayfieldInteractiveProxy;
         if(!(_loc5_ && Boolean(param1)))
         {
            §§push(_loc2_.clickObject);
            if(_loc4_)
            {
               if(§§pop() != null)
               {
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr0059:
                     addr0055:
                     if(_loc2_.clickObject is ResidentialFieldObject)
                     {
                        if(!_loc5_)
                        {
                           _loc3_ = {};
                           if(!_loc5_)
                           {
                              _loc3_.buildingId = (_loc2_.clickObject as ResidentialFieldObject).billboardObjectVo.buildingDTO.id;
                              if(_loc4_ || Boolean(param1))
                              {
                                 _loc3_.masteryBonusPick = param1.index + 1;
                                 if(_loc4_)
                                 {
                                    _loc3_.masteryBonusId = (_loc2_.clickObject as ResidentialFieldObject).billboardObjectVo.buildingDTO.currentMasteryBonus.configBonusId;
                                    if(!_loc5_)
                                    {
                                       addr00de:
                                       facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_MASTERY_BUILDING_PROCESS,_loc3_);
                                       if(_loc4_)
                                       {
                                          addr00f0:
                                          facade.sendNotification(ClickTaskNotificationConstants.MASTERY_TRAIT_SELECTED);
                                       }
                                    }
                                    addr00fb:
                                    facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
                                    §§goto(addr0109);
                                 }
                              }
                              §§goto(addr00de);
                           }
                           §§goto(addr00f0);
                        }
                        §§goto(addr0109);
                     }
                     §§goto(addr00fb);
                  }
                  addr0109:
                  return;
               }
               §§goto(addr00fb);
            }
            §§goto(addr0059);
         }
         §§goto(addr0055);
      }
      
      private function closeHandler(param1:Event) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(this)))
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
         }
         var _loc2_:PlayfieldInteractiveProxy = facade.retrieveProxy(PlayfieldInteractiveProxy.NAME) as PlayfieldInteractiveProxy;
         if(_loc3_)
         {
            §§push(_loc2_.clickObject);
            if(_loc3_)
            {
               if(§§pop() != null)
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     addr0081:
                     addr007d:
                     if(_loc2_.clickObject is ResidentialFieldObject)
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           addr0097:
                           sendNotification(ApplicationNotificationConstants.OPEN_RESIDENTIALBOOK,{"residential":(_loc2_.clickObject as ResidentialFieldObject).residentialFieldObjectVo});
                        }
                     }
                     §§goto(addr00b1);
                  }
                  §§goto(addr0097);
               }
               addr00b1:
               return;
            }
            §§goto(addr0081);
         }
         §§goto(addr007d);
      }
      
      public function setData(param1:Object) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:ArrayCollection = null;
         var _loc3_:MasteryBonusTraitGroupVo = null;
         if(!_loc7_)
         {
            if(param1 is Vector.<MasteryBonusTraitGroupVo>)
            {
               _loc2_ = new ArrayCollection();
               addr0031:
               for each(_loc3_ in param1)
               {
                  if(_loc6_ || Boolean(this))
                  {
                     _loc2_.addItem(_loc3_);
                  }
               }
               if(_loc6_)
               {
                  this.component.data = _loc2_;
               }
            }
            return;
         }
         §§goto(addr0031);
      }
   }
}

