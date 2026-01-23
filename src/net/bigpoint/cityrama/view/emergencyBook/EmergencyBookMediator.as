package net.bigpoint.cityrama.view.emergencyBook
{
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import mx.core.UIComponent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.LocalStorage.LocalStorageProxy;
   import net.bigpoint.cityrama.model.dropIcons.vo.DropIconVO;
   import net.bigpoint.cityrama.model.emergencyLayer.EmergencyLayerProxy;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencyAssignVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencySuccessBarVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencyZoneLayerVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.ProfessionalSlotVo;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.view.emergencyBook.ui.components.*;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class EmergencyBookMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "EmergencyBookMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         NAME = "EmergencyBookMediator";
      }
      
      private var _billboardObjectVo:BillboardObjectVo;
      
      private var _slotMode:Boolean;
      
      public function EmergencyBookMediator(param1:String, param2:Object)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(this)))
         {
            super(param1,param2);
         }
      }
      
      override public function getMediatorName() : String
      {
         return EmergencyBookMediator.NAME;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.EMERGENCY_SUB_CONTENT_READY,ApplicationNotificationConstants.EMERGENCY_SIDE_CONTENT_READY,ApplicationNotificationConstants.EMERGENCY_END,ApplicationNotificationConstants.EMERGENCY_VALUES_CHANGED,ApplicationNotificationConstants.DATA_GRID_PROFESSIONAL_SELECT_TEMPORARY];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = param1.getName();
         if(!(_loc4_ && Boolean(param1)))
         {
            §§push(ApplicationNotificationConstants.EMERGENCY_SUB_CONTENT_READY);
            if(!(_loc4_ && Boolean(param1)))
            {
               §§push(_loc2_);
               if(!_loc4_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc3_ || Boolean(param1))
                     {
                        addr01a6:
                        §§push(0);
                        if(_loc4_ && _loc3_)
                        {
                        }
                     }
                     else
                     {
                        addr01dd:
                        §§push(1);
                        if(_loc3_ || Boolean(_loc2_))
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(ApplicationNotificationConstants.EMERGENCY_SIDE_CONTENT_READY);
                     if(!(_loc4_ && Boolean(this)))
                     {
                        addr01cd:
                        §§push(_loc2_);
                        if(!_loc4_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc3_)
                              {
                                 §§goto(addr01dd);
                              }
                              else
                              {
                                 addr0265:
                                 §§push(3);
                                 if(_loc4_ && Boolean(this))
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push(ApplicationNotificationConstants.EMERGENCY_VALUES_CHANGED);
                              if(!(_loc4_ && Boolean(param1)))
                              {
                                 §§push(_loc2_);
                                 if(_loc3_ || Boolean(_loc2_))
                                 {
                                    addr0211:
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc4_)
                                       {
                                          §§push(2);
                                          if(_loc3_ || Boolean(_loc2_))
                                          {
                                          }
                                       }
                                       else
                                       {
                                          addr0283:
                                          §§push(4);
                                          if(_loc3_)
                                          {
                                          }
                                       }
                                       §§goto(addr029a);
                                    }
                                    else
                                    {
                                       §§push(ApplicationNotificationConstants.EMERGENCY_END);
                                       if(_loc3_ || Boolean(this))
                                       {
                                          addr0240:
                                          §§push(_loc2_);
                                          if(_loc3_)
                                          {
                                             addr0246:
                                             if(§§pop() === §§pop())
                                             {
                                                if(!(_loc4_ && Boolean(this)))
                                                {
                                                   §§goto(addr0265);
                                                }
                                                else
                                                {
                                                   §§goto(addr0283);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr027f);
                                             }
                                             §§goto(addr0283);
                                          }
                                          addr027f:
                                       }
                                       §§goto(addr027e);
                                    }
                                 }
                                 §§goto(addr027f);
                              }
                              addr027e:
                              if(ApplicationNotificationConstants.DATA_GRID_PROFESSIONAL_SELECT_TEMPORARY === _loc2_)
                              {
                                 §§goto(addr0283);
                              }
                              else
                              {
                                 §§push(5);
                              }
                              §§goto(addr029a);
                           }
                           §§goto(addr029a);
                        }
                        §§goto(addr0246);
                     }
                     §§goto(addr0240);
                  }
                  addr029a:
                  loop4:
                  switch(§§pop())
                  {
                     case 0:
                        while(true)
                        {
                           §§push(this.component);
                           if(_loc4_ && Boolean(this))
                           {
                              break;
                           }
                           if(!§§pop().contentLeft.numElements)
                           {
                              if(_loc3_)
                              {
                                 §§push(this.component);
                                 if(!_loc4_)
                                 {
                                    §§pop().contentLeft.addElement(param1.getBody() as UIComponent);
                                    if(_loc4_)
                                    {
                                    }
                                    break loop4;
                                 }
                                 while(true)
                                 {
                                    §§pop().sideContainer.removeElementAt(0);
                                    if(_loc4_ && Boolean(this))
                                    {
                                       break loop4;
                                    }
                                 }
                                 break loop4;
                                 addr009a:
                              }
                              do
                              {
                                 §§push(this.component);
                              }
                              while(!_loc4_);
                              
                              break;
                           }
                           §§push(this.component);
                           if(!(_loc3_ || Boolean(this)))
                           {
                              do
                              {
                                 if(!§§pop().sideContainer.numElements)
                                 {
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       §§push(this.component);
                                       break;
                                    }
                                    break loop4;
                                 }
                                 §§push(this.component);
                                 if(!(_loc3_ || Boolean(this)))
                                 {
                                    break;
                                 }
                                 §§goto(addr009a);
                                 §§push(this.component);
                              }
                              while(!_loc4_);
                              
                              break;
                           }
                           §§pop().contentLeft.removeElementAt(0);
                           if(_loc4_ && Boolean(this))
                           {
                              break loop4;
                           }
                        }
                        §§pop().sideContainer.addElement(param1.getBody() as UIComponent);
                        if(_loc4_ && Boolean(param1))
                        {
                        }
                        break;
                     case 1:
                        §§goto(addr00b1);
                     case 2:
                        if(!this._slotMode)
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              this.startEnabledCheck();
                              if(_loc3_ || Boolean(_loc2_))
                              {
                              }
                           }
                           break;
                        }
                        this.previewValues();
                        if(_loc4_)
                        {
                        }
                        break;
                     case 3:
                        this.handleClose(null);
                        if(_loc3_)
                        {
                        }
                        break;
                     case 4:
                        this.previewValues();
                        if(_loc4_)
                        {
                        }
                  }
                  return;
               }
               §§goto(addr0211);
            }
            §§goto(addr01cd);
         }
         §§goto(addr01a6);
      }
      
      private function previewValues() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:EmergencyLayerProxy = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
         var _loc2_:EmergencyAssignVo = _loc1_.getEmergencyAssignVo(this.billboardObjectVo);
         var _loc3_:EmergencySuccessBarVo = new EmergencySuccessBarVo(_loc2_.maxSuccessChance);
         if(_loc4_)
         {
            _loc3_.advanceVisible = true;
            if(!_loc5_)
            {
               addr006b:
               §§push(this.component);
               if(!_loc5_)
               {
                  §§pop().successProgress = _loc3_;
                  if(!_loc5_)
                  {
                     addr0081:
                     this.component.successBarComponent.advanceProgress = _loc2_.currentSuccessChance;
                     addr007e:
                  }
                  return;
               }
               §§goto(addr0081);
            }
            §§goto(addr007e);
         }
         §§goto(addr006b);
      }
      
      public function startEnabledCheck() : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc4_:ProfessionalSlotVo = null;
         var _loc5_:EmergencySuccessBarVo = null;
         var _loc1_:EmergencyLayerProxy = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
         var _loc2_:EmergencyAssignVo = _loc1_.getEmergencyAssignVo(this.billboardObjectVo);
         if(_loc9_)
         {
            §§push(this._slotMode);
            if(_loc9_)
            {
               if(!§§pop())
               {
                  addr0054:
                  _loc5_ = new EmergencySuccessBarVo(_loc2_.maxSuccessChance);
                  _loc5_.advanceVisible = false;
                  if(_loc9_)
                  {
                     §§push(this.component);
                     if(_loc9_)
                     {
                        §§pop().successProgress = _loc5_;
                        if(!(_loc8_ && Boolean(this)))
                        {
                           addr009b:
                           this.component.successBarComponent.successProgress = _loc2_.currentSuccessChance;
                        }
                        addr00a6:
                        var _loc3_:* = false;
                        §§goto(addr00a5);
                     }
                     §§goto(addr009b);
                  }
               }
               addr00a5:
               for each(_loc4_ in _loc2_.professionalSlots)
               {
                  §§push(_loc4_.empty);
                  if(_loc9_)
                  {
                     if(§§pop())
                     {
                        continue;
                     }
                     if(!(_loc9_ || Boolean(_loc1_)))
                     {
                        break;
                     }
                     §§push(true);
                  }
                  _loc3_ = §§pop();
                  break;
               }
               if(!_loc8_)
               {
                  if(_loc3_)
                  {
                     if(_loc9_ || Boolean(_loc2_))
                     {
                        §§push(this.component);
                        if(!_loc8_)
                        {
                           §§pop().startEnabled();
                           if(_loc8_ && Boolean(_loc2_))
                           {
                           }
                        }
                        else
                        {
                           addr0135:
                           §§pop().startDisabled();
                        }
                     }
                     §§goto(addr013a);
                  }
                  else
                  {
                     §§push(this.component);
                  }
                  §§goto(addr0135);
               }
               addr013a:
               return;
            }
            §§goto(addr00a6);
         }
         §§goto(addr0054);
      }
      
      public function setData(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._billboardObjectVo = param1 as BillboardObjectVo;
         }
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.onRegister();
            if(_loc2_)
            {
               this.setupListeners();
               if(_loc2_ || Boolean(this))
               {
                  this.setupInitialValues();
                  if(!(_loc1_ && Boolean(this)))
                  {
                     addr0050:
                     sendNotification(VirtualTaskNotificationInterest.EMERGENCY_BOOK_OPENED);
                  }
                  §§goto(addr005b);
               }
               §§goto(addr0050);
            }
         }
         addr005b:
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.onRemove();
            if(_loc1_ || _loc1_)
            {
               sendNotification(VirtualTaskNotificationInterest.EMERGENCY_BOOK_CLOSED);
            }
         }
      }
      
      private function setupInitialValues() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:LocalStorageProxy = facade.retrieveProxy(LocalStorageProxy.NAME) as LocalStorageProxy;
         var _loc2_:EmergencyLayerProxy = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
         var _loc3_:EmergencyZoneLayerVo = _loc2_.getEmergencyZoneLayerVo(this.billboardObjectVo);
         if(_loc4_ || Boolean(_loc3_))
         {
            §§push(this.component);
            if(!(_loc5_ && Boolean(_loc1_)))
            {
               §§pop().data = _loc3_;
               if(_loc4_ || Boolean(this))
               {
                  §§goto(addr0087);
               }
               §§goto(addr00c1);
            }
            addr0087:
            this.component.successProgress = new EmergencySuccessBarVo(_loc3_.maxSolvingPossibility);
            if(!(_loc5_ && Boolean(this)))
            {
               if(_loc1_.userdata.showEmergencyZoneLayer)
               {
                  if(!_loc5_)
                  {
                     addr00c1:
                     facade.sendNotification(ApplicationNotificationConstants.SHOW_COVERAGE_IN_EMERGENCY_LAYER);
                     if(_loc5_)
                     {
                     }
                  }
               }
               else
               {
                  facade.sendNotification(ApplicationNotificationConstants.SHOW_SPECIALIST_SLOTS_IN_EMERGENCY_LAYER);
               }
            }
            §§goto(addr00e0);
         }
         addr00e0:
      }
      
      private function setupListeners() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            §§push(this.component);
            if(!_loc2_)
            {
               §§pop().addEventListener(Event.CLOSE,this.handleClose);
               if(_loc1_)
               {
                  §§push(this.component);
                  if(_loc1_ || _loc2_)
                  {
                     §§push(EmergencyBook.NEXT);
                     if(_loc1_)
                     {
                        §§pop().addEventListener(§§pop(),this.handleNextClick);
                        if(!(_loc2_ && Boolean(this)))
                        {
                           §§push(this.component);
                           if(!(_loc2_ && _loc1_))
                           {
                              §§push(EmergencyBook.START);
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr0089:
                                 §§pop().addEventListener(§§pop(),this.handleStartClick);
                                 if(!_loc2_)
                                 {
                                    §§push(this.component);
                                    if(!_loc2_)
                                    {
                                       §§push(EmergencyBook.SELECT);
                                       if(_loc1_ || _loc2_)
                                       {
                                          §§goto(addr00bb);
                                       }
                                       §§goto(addr0103);
                                    }
                                    §§goto(addr00d0);
                                 }
                                 §§goto(addr0143);
                              }
                              addr00bb:
                              §§pop().addEventListener(§§pop(),this.handleSelectClick);
                              if(!_loc2_)
                              {
                                 §§push(this.component);
                                 if(!_loc2_)
                                 {
                                    addr00d0:
                                    §§push(EmergencySuccessBarComponent.BUBBLE_CLICKED);
                                    if(!(_loc2_ && Boolean(this)))
                                    {
                                       §§pop().addEventListener(§§pop(),this.handleShowCoverage);
                                       if(!_loc2_)
                                       {
                                          addr00f0:
                                          §§push(this.component);
                                          if(!_loc2_)
                                          {
                                             §§push(SpecialistSlotItemrenderer.SPECIALIST_SLOT_CLICKED);
                                             if(_loc1_)
                                             {
                                                addr0103:
                                                §§pop().addEventListener(§§pop(),this.handleSlotClick);
                                                if(!(_loc2_ && Boolean(this)))
                                                {
                                                   addr0118:
                                                   §§push(this.component);
                                                   if(_loc1_ || Boolean(this))
                                                   {
                                                      addr012e:
                                                      §§pop().addEventListener(EmergencyDataGridComponent.ITEM_SELECTED,this.handleSpecialistSelected);
                                                      addr0128:
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         addr0143:
                                                         §§push(this.component);
                                                         if(_loc1_ || _loc2_)
                                                         {
                                                            §§goto(addr015d);
                                                         }
                                                         §§goto(addr017d);
                                                      }
                                                      §§goto(addr017a);
                                                   }
                                                   §§goto(addr015d);
                                                }
                                                §§goto(addr017a);
                                             }
                                             §§goto(addr012e);
                                          }
                                          §§goto(addr0128);
                                       }
                                       §§goto(addr017a);
                                    }
                                    §§goto(addr012e);
                                 }
                                 addr015d:
                                 §§pop().addEventListener(EmergencyDataGridComponent.SELECT_ITEM_EVENT.type,this.handleSelectClick);
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    addr017d:
                                    this.component.backButton.addEventListener(MouseEvent.CLICK,this.handleBackClicked);
                                    addr017a:
                                 }
                              }
                              §§goto(addr018d);
                           }
                           §§goto(addr017d);
                        }
                        §§goto(addr0118);
                     }
                     §§goto(addr0089);
                  }
                  §§goto(addr0128);
               }
               addr018d:
               return;
            }
            §§goto(addr00d0);
         }
         §§goto(addr00f0);
      }
      
      private function handleStartClick(param1:Event) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            facade.sendNotification(ApplicationNotificationConstants.START_EMERGENCY_HANDLING,this.billboardObjectVo);
         }
         var _loc2_:Point = new Point(this.component.width / 2,this.component.height / 2);
         _loc2_ = this.component.localToGlobal(_loc2_);
         if(_loc3_)
         {
            sendNotification(ApplicationNotificationConstants.DROPICON_HANDLE_2D_LAYER_DROP,new DropIconVO(ServerResConst.RESOURCE_EXPERIENCE,_loc2_));
            if(!(_loc4_ && _loc3_))
            {
               §§goto(addr008b);
            }
            §§goto(addr00a3);
         }
         addr008b:
         this.component.startButton.enabled = false;
         if(!(_loc4_ && Boolean(this)))
         {
            addr00a3:
            TweenMax.delayedCall(1,this.handleClose,[null]);
         }
      }
      
      private function handleSelectClick(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         if(_loc6_)
         {
            facade.sendNotification(ApplicationNotificationConstants.DATA_GRID_PROFESSIONAL_SELECTED);
            if(_loc6_ || Boolean(this))
            {
               addr0035:
               facade.sendNotification(ApplicationNotificationConstants.SHOW_SPECIALIST_SLOTS_IN_EMERGENCY_LAYER);
            }
            var _loc2_:EmergencyLayerProxy = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
            var _loc3_:EmergencyAssignVo = _loc2_.getEmergencyAssignVo(this.billboardObjectVo);
            var _loc4_:EmergencySuccessBarVo = new EmergencySuccessBarVo(_loc3_.maxSuccessChance);
            _loc4_.advanceVisible = false;
            if(!_loc5_)
            {
               this.component.successProgress = _loc4_;
               if(_loc6_ || Boolean(_loc3_))
               {
                  this._slotMode = false;
                  if(_loc6_ || Boolean(_loc3_))
                  {
                     addr00b9:
                     this.startEnabledCheck();
                  }
                  §§goto(addr00be);
               }
               §§goto(addr00b9);
            }
            addr00be:
            return;
         }
         §§goto(addr0035);
      }
      
      private function handleSpecialistSelected(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            sendNotification(VirtualTaskNotificationInterest.EMERGENCY_BOOK_PROFESSIONAL_SELECTED);
            if(_loc2_ || _loc2_)
            {
               addr0043:
               this.component.selectEnabled();
            }
            return;
         }
         §§goto(addr0043);
      }
      
      private function handleSlotClick(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         if(!_loc6_)
         {
            this._slotMode = true;
            if(!_loc6_)
            {
               sendNotification(VirtualTaskNotificationInterest.EMERGENCY_BOOK_PROFESSIONAL_SLOT_CLICKED);
            }
         }
         var _loc2_:ProfessionalSlotVo = param1.target.data as ProfessionalSlotVo;
         if(_loc7_ || Boolean(param1))
         {
            facade.sendNotification(ApplicationNotificationConstants.SHOW_SPECIALIST_DETAILS_IN_EMERGENCY_LAYER,_loc2_);
         }
         var _loc3_:EmergencyLayerProxy = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
         var _loc4_:EmergencyAssignVo = _loc3_.getEmergencyAssignVo(this.billboardObjectVo);
         var _loc5_:EmergencySuccessBarVo = new EmergencySuccessBarVo(_loc4_.maxSuccessChance);
         _loc5_.advanceVisible = true;
         if(!(_loc6_ && Boolean(_loc3_)))
         {
            §§push(this.component);
            if(_loc7_)
            {
               §§pop().successProgress = _loc5_;
               if(_loc7_)
               {
                  addr00cd:
                  this.component.selectDisabled();
               }
               §§goto(addr00d2);
            }
            §§goto(addr00cd);
         }
         addr00d2:
      }
      
      private function handleShowCoverage(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            facade.sendNotification(ApplicationNotificationConstants.SHOW_COVERAGE_IN_EMERGENCY_LAYER);
         }
      }
      
      private function handleNextClick(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            facade.sendNotification(ApplicationNotificationConstants.SHOW_SPECIALIST_SLOTS_IN_EMERGENCY_LAYER);
         }
      }
      
      private function handleClose(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
         }
      }
      
      public function get component() : EmergencyBook
      {
         return super.viewComponent as EmergencyBook;
      }
      
      public function get billboardObjectVo() : BillboardObjectVo
      {
         return this._billboardObjectVo;
      }
      
      private function handleBackClicked(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            sendNotification(ApplicationNotificationConstants.SHOW_SPECIALIST_SLOTS_IN_EMERGENCY_LAYER);
         }
      }
   }
}

