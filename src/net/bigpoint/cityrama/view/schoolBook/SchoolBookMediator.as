package net.bigpoint.cityrama.view.schoolBook
{
   import flash.events.Event;
   import flash.utils.Dictionary;
   import flash.utils.clearInterval;
   import flash.utils.setInterval;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.FormulaProxy;
   import net.bigpoint.cityrama.model.departmentBook.DepartmentTabProxy;
   import net.bigpoint.cityrama.model.emergencyLayer.EmergencyLayerProxy;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.ProfessionalListInfoVo;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.model.schoolBook.SchoolBookProxy;
   import net.bigpoint.cityrama.view.departmentBook.EmergencyDepartmentBookMediator;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.AddSkillpointEvent;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.EmergencyDepartmentBook;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.AcademyFieldObject;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.schoolBook.ui.components.SchoolBook;
   import net.bigpoint.cityrama.view.schoolBook.ui.events.SchoolBookEvent;
   import net.bigpoint.util.RandomUtilities;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class SchoolBookMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "SchoolBookMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         NAME = "SchoolBookMediator";
      }
      
      private var _academyObject:AcademyFieldObject;
      
      private var _objectSpool:Dictionary;
      
      private var _schoolBookProxy:SchoolBookProxy;
      
      private var _waitingForPhaseUpdate:Boolean = false;
      
      private var _resourceProxy:PlayerResourceProxy;
      
      private var _formulaProxy:FormulaProxy;
      
      private var _intervalId:uint;
      
      private var _intervalRunning:Boolean;
      
      public function SchoolBookMediator(param1:String, param2:Object)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(param1)))
         {
            super(param1,param2);
            if(!_loc4_)
            {
               this._schoolBookProxy = facade.retrieveProxy(SchoolBookProxy.NAME) as SchoolBookProxy;
            }
         }
      }
      
      override public function getMediatorName() : String
      {
         return SchoolBookMediator.NAME;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.PROFESSIONALS_CHANGED,ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED,ApplicationNotificationConstants.EDUCATIONPOINTS_CHANGED,ApplicationNotificationConstants.ACADEMY_STATE_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = param1.getName();
         if(_loc3_ || Boolean(_loc2_))
         {
            §§push(ApplicationNotificationConstants.PROFESSIONALS_CHANGED);
            if(!_loc4_)
            {
               §§push(_loc2_);
               if(_loc3_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc3_ || Boolean(this))
                     {
                        addr00b4:
                        §§push(0);
                        if(_loc4_)
                        {
                        }
                     }
                     else
                     {
                        addr0135:
                        §§push(2);
                        if(_loc4_ && Boolean(this))
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED);
                     if(_loc3_ || Boolean(_loc2_))
                     {
                        §§push(_loc2_);
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr00e1:
                           if(§§pop() === §§pop())
                           {
                              if(_loc3_ || Boolean(_loc2_))
                              {
                                 §§push(1);
                                 if(_loc3_)
                                 {
                                 }
                              }
                              else
                              {
                                 §§goto(addr0135);
                              }
                           }
                           else
                           {
                              §§push(ApplicationNotificationConstants.EDUCATIONPOINTS_CHANGED);
                              if(!_loc4_)
                              {
                                 addr0108:
                                 §§push(_loc2_);
                                 if(!(_loc4_ && Boolean(this)))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc4_ && Boolean(_loc2_)))
                                       {
                                          §§goto(addr0135);
                                       }
                                       else
                                       {
                                          addr0153:
                                          §§push(3);
                                          if(_loc4_)
                                          {
                                          }
                                       }
                                       §§goto(addr016b);
                                    }
                                    else
                                    {
                                       §§goto(addr014f);
                                    }
                                 }
                                 addr014f:
                                 §§goto(addr014e);
                              }
                              addr014e:
                              if(ApplicationNotificationConstants.ACADEMY_STATE_CHANGED === _loc2_)
                              {
                                 §§goto(addr0153);
                              }
                              else
                              {
                                 §§push(4);
                              }
                              §§goto(addr016b);
                           }
                           §§goto(addr016b);
                        }
                        §§goto(addr014f);
                     }
                     §§goto(addr0108);
                  }
                  addr016b:
                  switch(§§pop())
                  {
                     case 0:
                     case 1:
                     case 2:
                        if(!this._waitingForPhaseUpdate)
                        {
                           if(!_loc4_)
                           {
                              RandomUtilities.addstackCall(this.renew);
                              if(_loc4_ && Boolean(_loc2_))
                              {
                              }
                           }
                        }
                        break;
                     case 3:
                        this._waitingForPhaseUpdate = false;
                        if(!(_loc4_ && Boolean(this)))
                        {
                           RandomUtilities.addstackCall(this.renew);
                           if(_loc3_)
                           {
                           }
                        }
                  }
                  return;
               }
               §§goto(addr00e1);
            }
            §§goto(addr014e);
         }
         §§goto(addr00b4);
      }
      
      public function get component() : SchoolBook
      {
         return super.viewComponent as SchoolBook;
      }
      
      public function get academyObject() : AcademyFieldObject
      {
         return this._academyObject;
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super.onRegister();
            if(_loc2_)
            {
               addr0032:
               this._objectSpool = new Dictionary();
               if(!_loc1_)
               {
                  sendNotification(ApplicationNotificationConstants.HUD_SWITCH_RESCOURCE,ServerResConst.RESOURCE_EDUCATIONPOINTS);
                  if(!(_loc1_ && Boolean(this)))
                  {
                     addr005c:
                     this.setupListeners();
                  }
                  return;
               }
            }
            §§goto(addr005c);
         }
         §§goto(addr0032);
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            RandomUtilities.removestackCall(this.renew);
            if(_loc1_)
            {
               addr002f:
               sendNotification(VirtualTaskNotificationInterest.ACADEMY_LAYER_CLOSED);
               if(_loc1_)
               {
                  super.onRemove();
                  if(_loc1_ || _loc1_)
                  {
                     this.removeListeners();
                  }
               }
            }
            return;
         }
         §§goto(addr002f);
      }
      
      private function renew() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:PlayfieldObjectsProxy = null;
         if(!(_loc3_ && Boolean(this)))
         {
            if(this.academyObject)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this.setData(this.academyObject);
                  addr0046:
               }
            }
            else
            {
               _loc1_ = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
               if(!(_loc3_ && _loc3_))
               {
                  this.setData(_loc1_.getAcademyList()[0]);
               }
            }
            return;
         }
         §§goto(addr0046);
      }
      
      public function setData(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._waitingForPhaseUpdate = false;
            if(!_loc3_)
            {
               this._academyObject = param1 as AcademyFieldObject;
               if(!_loc3_)
               {
                  §§goto(addr0037);
               }
               §§goto(addr0058);
            }
         }
         addr0037:
         this.component.data = this._schoolBookProxy.getSchoolBookVo(this._academyObject);
         if(_loc2_)
         {
            this.setTimerCost();
            if(_loc2_)
            {
               addr0058:
               this.startTimerCostInterval();
            }
         }
      }
      
      private function setTimerCost() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Object = {};
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.rcStock = this.resourceProxy.realCurrency;
            if(!_loc3_)
            {
               _loc1_.cost = 1;
               if(!(_loc3_ && _loc2_))
               {
                  addr0064:
                  _loc1_.cost = this.formulaProxy.getInstantFinishCostForAcademyPhase(this._academyObject.academyFieldObjectVo);
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr0087:
                     this.component.instantFinishData = _loc1_;
                  }
               }
               return;
            }
            §§goto(addr0087);
         }
         §§goto(addr0064);
      }
      
      private function get resourceProxy() : PlayerResourceProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this._resourceProxy);
            if(!_loc1_)
            {
               if(§§pop() == null)
               {
                  if(_loc2_ || _loc1_)
                  {
                     this._resourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
                  }
               }
               addr004d:
               return this._resourceProxy;
            }
         }
         §§goto(addr004d);
      }
      
      private function get formulaProxy() : FormulaProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            §§push(this._formulaProxy);
            if(!(_loc2_ && Boolean(this)))
            {
               if(§§pop() == null)
               {
                  if(!_loc2_)
                  {
                     addr0042:
                     this._formulaProxy = facade.retrieveProxy(FormulaProxy.NAME) as FormulaProxy;
                  }
               }
               return this._formulaProxy;
            }
         }
         §§goto(addr0042);
      }
      
      private function removeListeners() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this.component);
            if(_loc2_)
            {
               §§pop().removeEventListener(Event.CLOSE,this.handleClose);
               if(!(_loc1_ && _loc2_))
               {
                  §§push(this.component);
                  if(!_loc1_)
                  {
                     addr003f:
                     §§push(SchoolBookEvent.SCHOOL_BUY_POINTS);
                     if(_loc2_)
                     {
                        §§pop().removeEventListener(§§pop(),this.handleBuyStatPoints);
                        if(!(_loc1_ && Boolean(this)))
                        {
                           §§push(this.component);
                           if(_loc2_)
                           {
                              addr0067:
                              §§push(SchoolBookEvent.SCHOOL_START_EDUCATION);
                              if(_loc2_ || _loc2_)
                              {
                                 §§pop().removeEventListener(§§pop(),this.handleStartEducation);
                                 if(!_loc1_)
                                 {
                                    §§push(this.component);
                                    if(_loc2_ || _loc1_)
                                    {
                                       §§push(SchoolBookEvent.SCHOOL_USE_DEXTRO);
                                       if(_loc2_ || _loc1_)
                                       {
                                          §§pop().removeEventListener(§§pop(),this.handleDextroOnStatPoints);
                                          if(_loc2_)
                                          {
                                             addr00b6:
                                             §§push(this.component);
                                             if(_loc2_)
                                             {
                                                addr00be:
                                                §§push(SchoolBookEvent.SCHOOL_BUY_DEXTRO);
                                                if(!_loc1_)
                                                {
                                                   §§pop().removeEventListener(§§pop(),this.handleDextroBuy);
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      addr00e7:
                                                      §§push(this.component);
                                                      if(_loc2_ || Boolean(this))
                                                      {
                                                         §§push(SchoolBookEvent.SCHOOL_USE_STAT_POINT);
                                                         if(_loc2_)
                                                         {
                                                            addr0102:
                                                            §§pop().removeEventListener(§§pop(),this.handleUseStatPoint);
                                                            if(_loc2_ || _loc1_)
                                                            {
                                                               addr0117:
                                                               §§push(this.component);
                                                               if(!_loc1_)
                                                               {
                                                                  §§push(SchoolBookEvent.HIRE_PROFESSIONAL_TO_DEPARTMENT);
                                                                  if(_loc2_)
                                                                  {
                                                                     addr012a:
                                                                     §§pop().removeEventListener(§§pop(),this.handleHireProfessional);
                                                                     if(_loc2_ || Boolean(this))
                                                                     {
                                                                        §§push(this.component);
                                                                        if(!_loc1_)
                                                                        {
                                                                           addr0147:
                                                                           §§push(SchoolBookEvent.FIRE_PROFESSIONAL);
                                                                           if(_loc2_ || Boolean(this))
                                                                           {
                                                                              §§goto(addr015a);
                                                                           }
                                                                           §§goto(addr01aa);
                                                                        }
                                                                        §§goto(addr016f);
                                                                     }
                                                                     §§goto(addr01a1);
                                                                  }
                                                                  §§goto(addr018c);
                                                               }
                                                               §§goto(addr016f);
                                                            }
                                                            §§goto(addr0167);
                                                         }
                                                         §§goto(addr012a);
                                                      }
                                                      §§goto(addr0147);
                                                   }
                                                   §§goto(addr0167);
                                                }
                                                §§goto(addr018c);
                                             }
                                             §§goto(addr016f);
                                          }
                                          §§goto(addr0117);
                                       }
                                       §§goto(addr01aa);
                                    }
                                    §§goto(addr00be);
                                 }
                                 §§goto(addr01a1);
                              }
                              addr015a:
                              §§pop().removeEventListener(§§pop(),this.handleFireProfessional);
                              if(!_loc1_)
                              {
                                 addr0167:
                                 §§push(this.component);
                                 if(_loc2_)
                                 {
                                    addr016f:
                                    §§push(SchoolBookEvent.SHOW_BUILDING_INFO);
                                    if(_loc2_ || _loc2_)
                                    {
                                       addr018c:
                                       §§pop().removeEventListener(§§pop(),this.handleShowBuildingInfo);
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          addr01aa:
                                          this.component.removeEventListener(SchoolBookEvent.SCHOOL_BOOST_EDUCATION,this.handleInstantEducation);
                                          addr01a4:
                                          addr01a1:
                                       }
                                       §§goto(addr01b1);
                                    }
                                    §§goto(addr01aa);
                                 }
                                 §§goto(addr01a4);
                              }
                              §§goto(addr01b1);
                           }
                           §§goto(addr0147);
                        }
                        addr01b1:
                        return;
                     }
                     §§goto(addr0102);
                  }
                  §§goto(addr0067);
               }
               §§goto(addr00b6);
            }
            §§goto(addr003f);
         }
         §§goto(addr00e7);
      }
      
      private function setupListeners() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this.component);
            if(_loc1_)
            {
               §§pop().addEventListener(Event.CLOSE,this.handleClose);
               if(!_loc2_)
               {
                  §§push(this.component);
                  if(_loc1_)
                  {
                     addr0036:
                     §§push(SchoolBookEvent.SCHOOL_BUY_POINTS);
                     if(!_loc2_)
                     {
                        §§pop().addEventListener(§§pop(),this.handleBuyStatPoints);
                        if(_loc1_ || _loc2_)
                        {
                           addr0056:
                           §§push(this.component);
                           if(!(_loc2_ && _loc2_))
                           {
                              §§push(SchoolBookEvent.SCHOOL_START_EDUCATION);
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 §§pop().addEventListener(§§pop(),this.handleStartEducation);
                                 if(_loc1_ || _loc2_)
                                 {
                                    §§push(this.component);
                                    if(_loc1_)
                                    {
                                       addr0095:
                                       §§push(SchoolBookEvent.SCHOOL_USE_DEXTRO);
                                       if(!_loc2_)
                                       {
                                          §§pop().addEventListener(§§pop(),this.handleDextroOnStatPoints);
                                          if(!_loc2_)
                                          {
                                             addr00ad:
                                             §§push(this.component);
                                             if(_loc1_ || Boolean(this))
                                             {
                                                §§push(SchoolBookEvent.SCHOOL_BUY_DEXTRO);
                                                if(!_loc2_)
                                                {
                                                   §§pop().addEventListener(§§pop(),this.handleDextroBuy);
                                                   if(_loc1_)
                                                   {
                                                      §§push(this.component);
                                                      if(!_loc2_)
                                                      {
                                                         §§push(AddSkillpointEvent.ADD);
                                                         if(_loc1_ || _loc2_)
                                                         {
                                                            addr00f9:
                                                            §§pop().addEventListener(§§pop(),this.handleUseStatPoint);
                                                            if(_loc1_ || _loc1_)
                                                            {
                                                               §§push(this.component);
                                                               if(!_loc2_)
                                                               {
                                                                  addr0116:
                                                                  §§push(SchoolBookEvent.HIRE_PROFESSIONAL_TO_DEPARTMENT);
                                                                  if(_loc1_ || Boolean(this))
                                                                  {
                                                                     §§pop().addEventListener(§§pop(),this.handleHireProfessional);
                                                                     if(!(_loc2_ && Boolean(this)))
                                                                     {
                                                                        addr013e:
                                                                        §§push(this.component);
                                                                        if(_loc1_)
                                                                        {
                                                                           addr0146:
                                                                           §§push(SchoolBookEvent.FIRE_PROFESSIONAL);
                                                                           if(!_loc2_)
                                                                           {
                                                                              addr0151:
                                                                              §§pop().addEventListener(§§pop(),this.handleFireProfessional);
                                                                              if(!_loc2_)
                                                                              {
                                                                                 addr015e:
                                                                                 §§push(this.component);
                                                                                 if(_loc1_)
                                                                                 {
                                                                                    §§push(SchoolBookEvent.SHOW_BUILDING_INFO);
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       addr017b:
                                                                                       §§pop().addEventListener(§§pop(),this.handleShowBuildingInfo);
                                                                                       if(!(_loc2_ && Boolean(this)))
                                                                                       {
                                                                                          addr0199:
                                                                                          this.component.addEventListener(SchoolBookEvent.SCHOOL_BOOST_EDUCATION,this.handleInstantEducation);
                                                                                          addr0193:
                                                                                          addr0190:
                                                                                       }
                                                                                       §§goto(addr01a0);
                                                                                    }
                                                                                    §§goto(addr0199);
                                                                                 }
                                                                                 §§goto(addr0193);
                                                                              }
                                                                              §§goto(addr0190);
                                                                           }
                                                                           §§goto(addr0199);
                                                                        }
                                                                        §§goto(addr0193);
                                                                     }
                                                                     addr01a0:
                                                                     return;
                                                                  }
                                                                  §§goto(addr0151);
                                                               }
                                                               §§goto(addr0146);
                                                            }
                                                            §§goto(addr015e);
                                                         }
                                                         §§goto(addr0199);
                                                      }
                                                      §§goto(addr0116);
                                                   }
                                                   §§goto(addr0190);
                                                }
                                                §§goto(addr017b);
                                             }
                                             §§goto(addr0116);
                                          }
                                          §§goto(addr015e);
                                       }
                                       §§goto(addr00f9);
                                    }
                                    §§goto(addr0146);
                                 }
                                 §§goto(addr015e);
                              }
                              §§goto(addr017b);
                           }
                           §§goto(addr0095);
                        }
                        §§goto(addr00ad);
                     }
                     §§goto(addr0199);
                  }
                  §§goto(addr0116);
               }
               §§goto(addr013e);
            }
            §§goto(addr0036);
         }
         §§goto(addr0056);
      }
      
      private function handleDextroBuy(param1:SchoolBookEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this.clearSpool();
            if(!(_loc2_ && Boolean(param1)))
            {
               addr0040:
               facade.sendNotification(ApplicationNotificationConstants.OPEN_GOOD_PURCHASE,{"cat":ServerTagConstants.GOOD_DEXTRO});
            }
            return;
         }
         §§goto(addr0040);
      }
      
      private function handleShowBuildingInfo(param1:SchoolBookEvent) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:PopupSettingsVo = null;
         var _loc3_:Object = null;
         if(_loc5_)
         {
            if(param1.infrastructureFieldObject)
            {
               addr002c:
               _loc2_ = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
               if(!(_loc4_ && Boolean(param1)))
               {
                  _loc2_.modal = true;
                  if(_loc5_ || Boolean(_loc3_))
                  {
                     _loc2_.viewClass = EmergencyDepartmentBook;
                     if(_loc5_ || Boolean(_loc2_))
                     {
                        addr007b:
                        _loc2_.mediatorClass = EmergencyDepartmentBookMediator;
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           addr0090:
                           _loc2_.mediatorName = EmergencyDepartmentBookMediator.NAME;
                        }
                        addr0099:
                        _loc3_ = new Object();
                        if(!_loc4_)
                        {
                           _loc3_.index = DepartmentTabProxy.DEPARTMENT_INDEX;
                           if(_loc5_ || Boolean(this))
                           {
                              _loc3_.cat = param1.infrastructureFieldObject.emergencyFieldObjectVo.department[0];
                              if(_loc5_)
                              {
                                 _loc2_.data = _loc3_;
                                 if(_loc5_ || Boolean(_loc2_))
                                 {
                                    addr00fb:
                                    facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc2_);
                                 }
                                 §§goto(addr0106);
                              }
                              §§goto(addr00fb);
                           }
                           §§goto(addr0106);
                        }
                        §§goto(addr00fb);
                     }
                     §§goto(addr0090);
                  }
                  §§goto(addr007b);
               }
               §§goto(addr0099);
            }
            addr0106:
            return;
         }
         §§goto(addr002c);
      }
      
      private function handleFireProfessional(param1:SchoolBookEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:ProfessionalListInfoVo = EmergencyLayerProxy.getPLIVOfromPDTO(param1.pDTO);
         if(_loc4_ || Boolean(this))
         {
            facade.sendNotification(MiniLayerConstants.OPEN_MINI_PROFESSIONAL_FIRE,_loc2_.profId);
         }
      }
      
      private function handleHireProfessional(param1:SchoolBookEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = {};
         if(_loc4_)
         {
            _loc2_.did = param1.bid;
            if(_loc4_ || _loc3_)
            {
               _loc2_.bid = this._academyObject.billboardObjectVo.buildingDTO.id;
               if(_loc4_)
               {
                  _loc2_.prof = this._academyObject.billboardObjectVo.buildingDTO.professionals[0].id;
                  if(!_loc3_)
                  {
                     addr0080:
                     facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_HIRE_PROFESSIONAL,_loc2_);
                  }
               }
               §§goto(addr008c);
            }
            §§goto(addr0080);
         }
         addr008c:
      }
      
      private function handleBuyStatPoints(param1:SchoolBookEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(this))
         {
            this.clearSpool();
         }
         var _loc2_:Object = {};
         if(_loc3_ || Boolean(this))
         {
            _loc2_.pfi = this._academyObject.billboardObjectVo.buildingDTO.id;
            if(!_loc4_)
            {
               addr0068:
               _loc2_.cbi = this._academyObject.academyFieldObjectVo.educationPhase.configPhaseId;
               if(_loc3_)
               {
                  §§goto(addr007f);
               }
               §§goto(addr008b);
            }
            addr007f:
            _loc2_.rc = false;
            if(!_loc4_)
            {
               addr008b:
               facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_ADD_EDUCATION_STEP,_loc2_);
            }
            return;
         }
         §§goto(addr0068);
      }
      
      private function handleStartEducation(param1:SchoolBookEvent) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:* = false;
         var _loc3_:Object = null;
         if(!_loc4_)
         {
            §§push(this.component.contentLeft.unassignedSkillPoints);
            if(_loc5_ || Boolean(_loc3_))
            {
               §§push(!§§pop());
               if(!_loc4_)
               {
                  _loc2_ = §§pop();
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr004d:
                     if(!_loc2_)
                     {
                        if(_loc5_ || Boolean(param1))
                        {
                           sendNotification(MiniLayerConstants.OPEN_MINI_PROFESSIONAL_UNSPENT_SKILLPOINTS_MINI_LAYER);
                           if(_loc5_ || Boolean(param1))
                           {
                              addr00f2:
                              this.clearSpool();
                           }
                        }
                        return;
                     }
                     _loc3_ = {};
                     if(!(_loc4_ && Boolean(this)))
                     {
                        _loc3_.pfi = this._academyObject.billboardObjectVo.buildingDTO.id;
                        if(_loc5_ || Boolean(this))
                        {
                           _loc3_.bst = false;
                           if(!(_loc4_ && Boolean(_loc3_)))
                           {
                              facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_START_EDUCATION,_loc3_);
                              if(!_loc4_)
                              {
                                 addr00ec:
                                 this.startTimerCostInterval();
                              }
                              §§goto(addr00f2);
                           }
                           §§goto(addr00ec);
                        }
                        §§goto(addr00f2);
                     }
                     §§goto(addr00ec);
                  }
                  §§goto(addr00f2);
               }
            }
            §§goto(addr004d);
         }
         §§goto(addr00f2);
      }
      
      private function handleInstantEducation(param1:SchoolBookEvent) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:* = false;
         var _loc3_:Object = null;
         var _loc4_:* = NaN;
         var _loc5_:PlayerResourceProxy = null;
         if(_loc7_)
         {
            §§push(this.component.contentLeft.unassignedSkillPoints);
            if(_loc7_ || Boolean(param1))
            {
               §§push(!§§pop());
               if(_loc7_ || Boolean(_loc3_))
               {
                  _loc2_ = §§pop();
                  if(_loc7_ || Boolean(this))
                  {
                     addr0061:
                     addr0060:
                     if(!_loc2_)
                     {
                        if(!(_loc6_ && _loc2_))
                        {
                           sendNotification(MiniLayerConstants.OPEN_MINI_PROFESSIONAL_UNSPENT_SKILLPOINTS_MINI_LAYER);
                           if(!_loc6_)
                           {
                              addr01be:
                              this.clearSpool();
                           }
                           return;
                        }
                     }
                     else
                     {
                        _loc3_ = {};
                        if(!_loc6_)
                        {
                           §§push(this.formulaProxy.getInstantFinishCostForAcademyPhase(this._academyObject.academyFieldObjectVo));
                           if(!_loc6_)
                           {
                              §§push(§§pop());
                           }
                           _loc4_ = §§pop();
                        }
                        _loc5_ = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
                        if(_loc5_.realCurrency < _loc4_)
                        {
                           if(!_loc6_)
                           {
                              sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
                              if(!(_loc6_ && Boolean(_loc3_)))
                              {
                                 return;
                              }
                              addr01b2:
                              facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_BOOSTPHASE,_loc3_);
                           }
                        }
                        else if(!param1.educationRunning)
                        {
                           if(_loc7_)
                           {
                              _loc3_.pfi = this._academyObject.billboardObjectVo.buildingDTO.id;
                              if(!(_loc6_ && Boolean(this)))
                              {
                                 addr0133:
                                 _loc3_.bst = true;
                                 if(_loc7_ || Boolean(this))
                                 {
                                    facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_START_EDUCATION,_loc3_);
                                    if(!(_loc7_ || Boolean(_loc3_)))
                                    {
                                       addr0192:
                                       _loc3_.phaseId = this._academyObject.academyFieldObjectVo.educationPhase.phaseId;
                                       if(!(_loc6_ && Boolean(_loc3_)))
                                       {
                                          §§goto(addr01b2);
                                       }
                                    }
                                    §§goto(addr01be);
                                 }
                              }
                              §§goto(addr01b2);
                           }
                           §§goto(addr0133);
                        }
                        else
                        {
                           _loc3_.buildingId = this._academyObject.billboardObjectVo.buildingDTO.id;
                           if(!(_loc6_ && Boolean(_loc3_)))
                           {
                              §§goto(addr0192);
                           }
                        }
                     }
                  }
                  §§goto(addr01be);
               }
            }
            §§goto(addr0061);
         }
         §§goto(addr0060);
      }
      
      private function handleDextroOnStatPoints(param1:SchoolBookEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || _loc2_)
         {
            this.clearSpool();
         }
         var _loc2_:Object = {};
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            _loc2_.pfi = this._academyObject.billboardObjectVo.buildingDTO.id;
            if(_loc3_ || Boolean(param1))
            {
               _loc2_.cbi = this._academyObject.academyFieldObjectVo.educationPhase.configPhaseId;
               if(_loc3_ || Boolean(_loc2_))
               {
                  addr008d:
                  _loc2_.rc = true;
                  if(_loc3_ || Boolean(param1))
                  {
                     addr00a0:
                     facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_ADD_EDUCATION_STEP,_loc2_);
                  }
               }
               return;
            }
            §§goto(addr008d);
         }
         §§goto(addr00a0);
      }
      
      private function handleUseStatPoint(param1:AddSkillpointEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(param1.sendToServerNow)
            {
               if(_loc3_)
               {
                  this.addToSpool(param1);
                  if(!_loc2_)
                  {
                     addr003f:
                     this.clearSpool();
                     if(_loc2_)
                     {
                     }
                  }
                  §§goto(addr0053);
               }
               §§goto(addr003f);
            }
            else
            {
               this.addToSpool(param1);
            }
            addr0053:
            return;
         }
         §§goto(addr003f);
      }
      
      private function clearSpool() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:Object = null;
         for each(_loc1_ in this._objectSpool)
         {
            if(_loc5_ || Boolean(_loc1_))
            {
               facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_SPEND_SKILLPOINT,_loc1_);
            }
         }
         if(_loc5_)
         {
            this._objectSpool = new Dictionary();
         }
      }
      
      private function addToSpool(param1:AddSkillpointEvent) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!_loc4_)
         {
            var _loc2_:* = this.component.contentLeft;
            §§push(_loc2_.skillPointsAvailable);
            if(_loc5_)
            {
               §§push(§§pop() - 1);
            }
            var _loc3_:* = §§pop();
            if(_loc5_)
            {
               _loc2_.skillPointsAvailable = _loc3_;
            }
            if(!(_loc4_ && Boolean(param1)))
            {
               if(this._objectSpool[param1.professionalId + param1.attributeType] != null)
               {
                  if(_loc5_ || _loc3_)
                  {
                     _loc2_ = this._objectSpool[param1.professionalId + param1.attributeType];
                     _loc3_ = _loc2_.amount + 1;
                     if(!_loc4_)
                     {
                        _loc2_.amount = _loc3_;
                     }
                     if(_loc4_)
                     {
                     }
                  }
               }
               else
               {
                  this._objectSpool[param1.professionalId + param1.attributeType] = {
                     "profId":param1.professionalId,
                     "attributeType":param1.attributeType,
                     "amount":1
                  };
               }
            }
         }
      }
      
      private function handleClose(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.clearSpool();
            if(_loc2_)
            {
               this.clearTimerCostInterval();
               if(!(_loc3_ && Boolean(param1)))
               {
                  addr003e:
                  facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.getMediatorName());
               }
               §§goto(addr004d);
            }
            §§goto(addr003e);
         }
         addr004d:
      }
      
      private function startTimerCostInterval() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this._academyObject);
            if(_loc2_ || Boolean(this))
            {
               §§push(§§pop().academyFieldObjectVo);
               if(_loc2_)
               {
                  §§push(§§pop().educationPhase);
                  if(_loc2_ || _loc1_)
                  {
                     §§push(§§pop().behaviourInitialTime);
                     if(!_loc1_)
                     {
                        §§push(0);
                        if(!(_loc1_ && _loc1_))
                        {
                           §§push(§§pop() == §§pop());
                           if(_loc2_ || Boolean(this))
                           {
                              §§push(!§§pop());
                              if(_loc2_ || _loc1_)
                              {
                                 var _temp_7:* = §§pop();
                                 §§push(_temp_7);
                                 if(_temp_7)
                                 {
                                    if(!_loc1_)
                                    {
                                       addr0086:
                                       §§pop();
                                       if(!_loc1_)
                                       {
                                          addr009b:
                                          addr0099:
                                          addr0096:
                                          addr0093:
                                          addr0090:
                                          §§push(this._academyObject.academyFieldObjectVo.educationPhase.behaviourEndTime == 0);
                                          if(!(_loc1_ && _loc1_))
                                          {
                                             §§push(!§§pop());
                                             if(!_loc1_)
                                             {
                                                §§goto(addr00af);
                                             }
                                          }
                                          §§goto(addr00ce);
                                       }
                                       §§goto(addr00e1);
                                    }
                                 }
                                 addr00af:
                                 if(§§pop())
                                 {
                                    if(_loc2_ || _loc2_)
                                    {
                                       addr00ce:
                                       if(!this._intervalRunning)
                                       {
                                          if(_loc2_)
                                          {
                                             addr00d7:
                                             this._intervalRunning = true;
                                             if(_loc2_)
                                             {
                                                addr00e1:
                                                this._intervalId = setInterval(this.setTimerCost,1000);
                                             }
                                          }
                                       }
                                       §§goto(addr00f4);
                                    }
                                    §§goto(addr00d7);
                                 }
                                 addr00f4:
                                 return;
                              }
                           }
                           §§goto(addr0086);
                        }
                        §§goto(addr009b);
                     }
                     §§goto(addr0099);
                  }
                  §§goto(addr0096);
               }
               §§goto(addr0093);
            }
            §§goto(addr0090);
         }
         §§goto(addr00e1);
      }
      
      private function clearTimerCostInterval() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            if(this._intervalRunning)
            {
               if(!_loc1_)
               {
                  clearInterval(this._intervalId);
                  if(!_loc1_)
                  {
                     addr0046:
                     this._intervalRunning = false;
                  }
               }
            }
            return;
         }
         §§goto(addr0046);
      }
   }
}

