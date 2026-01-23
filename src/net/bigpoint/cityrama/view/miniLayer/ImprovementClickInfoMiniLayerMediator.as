package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.quest.QuestGFXIDLayerConstants;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.model.miniLayer.vo.ImprovementMiniLayerVo;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.components.ImprovementInfoMiniLayerComponent;
   import net.bigpoint.cityrama.view.miniLayer.ui.ImprovementClickInfoMiniLayer;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ImprovementClickInfoMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "ImprovementClickInfoMiniLayerMediator";
      
      public static const LINE_ID_0:uint = 0;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc2_))
      {
         NAME = "ImprovementClickInfoMiniLayerMediator";
         if(_loc2_)
         {
            addr002a:
            LINE_ID_0 = 0;
         }
         return;
      }
      §§goto(addr002a);
      
      private var _data:ImprovementMiniLayerVo;
      
      public function ImprovementClickInfoMiniLayerMediator(param1:String, param2:Object)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(param1))
         {
            super(param1,param2);
         }
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super.onRegister();
            if(!_loc1_)
            {
               facade.registerMediator(new UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this.component.uiInfolayerAlignmentLine],this,UserInterfaceInfoLayerMediator.DELAY_SMOOTH));
               if(!_loc1_)
               {
                  addr0071:
                  this.addListener();
               }
               return;
            }
         }
         §§goto(addr0071);
      }
      
      private function addListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this.component);
            if(_loc1_ || _loc1_)
            {
               §§pop().addEventListener(Event.CLOSE,this.handleClose);
               if(!_loc2_)
               {
                  §§push(this.component);
                  if(!(_loc2_ && _loc1_))
                  {
                     §§goto(addr0050);
                  }
                  §§goto(addr008a);
               }
               §§goto(addr00aa);
            }
            addr0050:
            §§push(ImprovementClickInfoMiniLayer.FEATURE_IMPROVEMENT);
            if(_loc1_ || _loc1_)
            {
               §§pop().addEventListener(§§pop(),this.handleFeatureScreen);
               if(!_loc2_)
               {
                  §§push(this.component);
                  if(!(_loc2_ && _loc1_))
                  {
                     addr008a:
                     §§push(ImprovementInfoMiniLayerComponent.IMPROVEMENT_OVER);
                     if(_loc1_ || _loc1_)
                     {
                        §§goto(addr009d);
                     }
                     §§goto(addr00b3);
                  }
                  §§goto(addr00ad);
               }
               §§goto(addr00aa);
            }
            addr009d:
            §§pop().addEventListener(§§pop(),this.handleImprovementOver);
            if(_loc1_)
            {
               addr00b3:
               this.component.addEventListener(ImprovementInfoMiniLayerComponent.IMPROVEMENT_OUT,this.handleImprovementOut);
               addr00ad:
               addr00aa:
            }
            return;
         }
         §§goto(addr00aa);
      }
      
      private function handleImprovementOut(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
         }
      }
      
      private function handleImprovementOver(param1:Event) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(_loc5_ || _loc2_)
         {
            param1.stopPropagation();
         }
         §§push(this._data.improvementVo.config.id);
         if(!_loc6_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:ImprovementInfoMiniLayerComponent = param1.target as ImprovementInfoMiniLayerComponent;
         var _loc4_:Point = _loc3_.improvementGroup.localToGlobal(new Point());
         _loc4_.x += _loc3_.improvementGroup.width / 2;
         if(!(_loc6_ && Boolean(_loc3_)))
         {
            sendNotification(ApplicationNotificationConstants.SHOW_IMPROVEMENT_IN_UI_INFOLAYER,{
               "cid":_loc2_,
               "lineId":LINE_ID_0,
               "pt":_loc4_,
               "impro":this._data.improvementVo
            },this.getMediatorName());
         }
      }
      
      private function handleFeatureScreen(param1:Event) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            param1.stopPropagation();
         }
         var _loc2_:Object = new Object();
         if(_loc3_ || Boolean(this))
         {
            _loc2_.quest = false;
            if(!_loc4_)
            {
               _loc2_.feature = QuestGFXIDLayerConstants.IMPROVEMENT_FEATURE_EFFECTS;
               if(_loc3_)
               {
                  addr005a:
                  sendNotification(ApplicationNotificationConstants.OPEN_BIG_FEATURE_OR_CHARACTER_SCREEN,_loc2_);
               }
               return;
            }
         }
         §§goto(addr005a);
      }
      
      private function handleClose(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
         }
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super.onRemove();
            if(!_loc2_)
            {
               addr0027:
               this.removeListener();
            }
            return;
         }
         §§goto(addr0027);
      }
      
      private function removeListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this.component);
            if(!_loc2_)
            {
               §§pop().removeEventListener(Event.CLOSE,this.handleClose);
               if(!(_loc2_ && Boolean(this)))
               {
                  §§push(this.component);
                  if(!_loc2_)
                  {
                     §§push(ImprovementClickInfoMiniLayer.FEATURE_IMPROVEMENT);
                     if(_loc1_ || _loc2_)
                     {
                        §§pop().removeEventListener(§§pop(),this.handleFeatureScreen);
                        if(_loc1_)
                        {
                           addr0068:
                           §§push(this.component);
                           if(!_loc2_)
                           {
                              addr007a:
                              §§push(ImprovementInfoMiniLayerComponent.IMPROVEMENT_OVER);
                              if(_loc1_)
                              {
                                 addr0085:
                                 §§pop().removeEventListener(§§pop(),this.handleImprovementOver);
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    addr00a3:
                                    this.component.removeEventListener(ImprovementInfoMiniLayerComponent.IMPROVEMENT_OUT,this.handleImprovementOut);
                                    addr009d:
                                 }
                                 §§goto(addr00aa);
                              }
                              §§goto(addr00a3);
                           }
                           §§goto(addr009d);
                        }
                        addr00aa:
                        return;
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr007a);
               }
               §§goto(addr0068);
            }
            §§goto(addr009d);
         }
         §§goto(addr0068);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.IMPROVEMENT_UPDATED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:ImprovementVo = null;
         var _loc3_:* = param1.getName();
         if(_loc5_)
         {
            if(ApplicationNotificationConstants.IMPROVEMENT_UPDATED === _loc3_)
            {
               addr00fb:
               §§push(0);
               if(_loc5_ || Boolean(_loc2_))
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
                  _loc2_ = param1.getBody() as ImprovementVo;
                  if(_loc5_ || Boolean(param1))
                  {
                     if(!_loc2_)
                     {
                        break;
                     }
                     if(_loc5_)
                     {
                        §§push(_loc2_.equippedBuildingId);
                        if(_loc5_ || Boolean(param1))
                        {
                           §§push(this._data);
                           if(_loc5_)
                           {
                              §§push(§§pop().improvementVo);
                              if(_loc5_ || Boolean(this))
                              {
                                 §§push(§§pop().equippedBuildingId);
                                 if(!(_loc4_ && Boolean(this)))
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(_loc5_ || Boolean(_loc2_))
                                    {
                                       var _temp_8:* = §§pop();
                                       §§push(_temp_8);
                                       if(_temp_8)
                                       {
                                          if(!_loc4_)
                                          {
                                             addr00a7:
                                             §§pop();
                                             if(!_loc5_)
                                             {
                                                break;
                                             }
                                             addr00bc:
                                             addr00b9:
                                             addr00b6:
                                             addr00b2:
                                             §§push(_loc2_.currentSlotId == this._data.improvementVo.currentSlotId);
                                          }
                                       }
                                       if(§§pop())
                                       {
                                          if(_loc5_)
                                          {
                                             addr00c7:
                                             this.handleClose(null);
                                          }
                                       }
                                       break;
                                    }
                                    §§goto(addr00a7);
                                 }
                                 §§goto(addr00bc);
                              }
                              §§goto(addr00b9);
                           }
                           §§goto(addr00b6);
                        }
                        §§goto(addr00b2);
                     }
                  }
                  §§goto(addr00c7);
            }
            return;
         }
         §§goto(addr00fb);
      }
      
      public function setData(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            if(param1 is ImprovementMiniLayerVo)
            {
               if(_loc3_)
               {
                  this._data = param1 as ImprovementMiniLayerVo;
                  if(_loc3_)
                  {
                     this.component.data = this._data;
                  }
               }
            }
         }
      }
      
      public function get component() : ImprovementClickInfoMiniLayer
      {
         return super.viewComponent as ImprovementClickInfoMiniLayer;
      }
   }
}

