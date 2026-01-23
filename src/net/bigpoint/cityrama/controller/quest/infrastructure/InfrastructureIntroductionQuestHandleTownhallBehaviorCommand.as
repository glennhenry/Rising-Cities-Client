package net.bigpoint.cityrama.controller.quest.infrastructure
{
   import as3isolib.geom.IsoMath;
   import as3isolib.geom.Pt;
   import com.greensock.TweenMax;
   import eDpLib.events.ProxyEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.EmergencyConstants;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.dropIcons.vo.DropIconVO;
   import net.bigpoint.cityrama.model.emergencyTV.EmergencyTVProxy;
   import net.bigpoint.cityrama.model.emergencyTV.vo.TVShowVo;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.quest.QuestProxy;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestRewardInfoVo;
   import net.bigpoint.cityrama.view.emergencyTV.EmergencyTVMediator;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ActivatorFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.TownHallFieldObject;
   import net.bigpoint.field3d.interfaces.IObject3D;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class InfrastructureIntroductionQuestHandleTownhallBehaviorCommand extends SimpleCommand implements ICommand
   {
      
      private var _questProxy:QuestProxy;
      
      private var _playfieldObjectsProxy:PlayfieldObjectsProxy;
      
      private var _questId:Number;
      
      private var _done:Boolean;
      
      public function InfrastructureIntroductionQuestHandleTownhallBehaviorCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         if(_loc7_ || Boolean(param1))
         {
            this.prepareProxys();
         }
         var _loc2_:String = param1.getBody().localeId as String;
         if(!(_loc8_ && Boolean(_loc2_)))
         {
            this._questId = param1.getBody().questId as Number;
         }
         var _loc3_:ActivatorFieldObject = this._playfieldObjectsProxy.getCurrentActivatorFieldObject();
         if(!(_loc8_ && Boolean(_loc3_)))
         {
            if(_loc3_)
            {
               if(!_loc8_)
               {
                  addr0079:
                  if(!(_loc3_ is TownHallFieldObject))
                  {
                     if(_loc7_ || Boolean(_loc3_))
                     {
                        return;
                     }
                  }
               }
            }
            var _loc4_:TownHallFieldObject = this._playfieldObjectsProxy.getTownHall();
            if(_loc4_ == null)
            {
               if(!_loc8_)
               {
                  TweenMax.delayedCall(1,facade.sendNotification,[param1.getName(),param1.getBody()]);
                  if(_loc8_ && Boolean(param1))
                  {
                     addr00de:
                     _loc4_.townHallFieldObjectVo.fakeAnimationForQuest = "";
                     var _loc5_:EmergencyTVMediator = facade.retrieveMediator(EmergencyTVMediator.NAME) as EmergencyTVMediator;
                     var _loc6_:* = _loc2_;
                     if(!(_loc8_ && Boolean(_loc2_)))
                     {
                        §§push("471");
                        if(!_loc8_)
                        {
                           §§push(_loc6_);
                           if(_loc7_ || Boolean(this))
                           {
                              if(§§pop() !== §§pop())
                              {
                                 §§push("473");
                                 if(!(_loc8_ && Boolean(param1)))
                                 {
                                    addr0291:
                                    §§push(_loc6_);
                                    if(_loc7_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc7_)
                                          {
                                             §§push(1);
                                             if(_loc7_ || Boolean(this))
                                             {
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr02cf);
                                          }
                                          §§goto(addr02ef);
                                       }
                                       else
                                       {
                                          §§goto(addr02bd);
                                       }
                                    }
                                    addr02bd:
                                    §§goto(addr02bb);
                                 }
                                 addr02bb:
                                 if("474" === _loc6_)
                                 {
                                    §§goto(addr02cf);
                                 }
                                 else
                                 {
                                    §§push(3);
                                 }
                                 addr02ef:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       §§push(_loc4_.townHallFieldObjectVo);
                                       if(_loc7_ || Boolean(_loc2_))
                                       {
                                          §§push(EmergencyConstants.EMERGENCY_STATUS_STARTED);
                                          if(_loc7_ || Boolean(_loc2_))
                                          {
                                             §§pop().fakeAnimationForQuest = §§pop();
                                             if(!(_loc8_ && Boolean(param1)))
                                             {
                                                _loc5_.setTVData(EmergencyTVProxy.getEmergencyTVVo(999,ServerTagConstants.FIRE_DEPARTMENT,999,TVShowVo.START,_loc4_.townHallFieldObjectVo.buildingDTO.id));
                                                if(_loc7_ || Boolean(_loc2_))
                                                {
                                                   §§push(_loc4_.townHallFieldObjectVo);
                                                   if(_loc7_)
                                                   {
                                                      addr0187:
                                                      §§push(true);
                                                      if(_loc7_ || Boolean(_loc3_))
                                                      {
                                                         §§pop().hideIconsForMoveMode = §§pop();
                                                         if(!_loc7_)
                                                         {
                                                            addr01c4:
                                                            _loc5_.hide();
                                                            if(!_loc7_)
                                                            {
                                                               addr022c:
                                                               _loc4_.townHallFieldObjectVo.hideIconsForMoveMode = true;
                                                               addr0226:
                                                               addr022b:
                                                               if(_loc7_)
                                                               {
                                                                  addr0308:
                                                                  _loc4_.invalidateAnimationSlotManager();
                                                                  if(_loc8_)
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                               addr0314:
                                                               _loc4_.invalidateIconStateManager();
                                                               break;
                                                            }
                                                         }
                                                         §§goto(addr0308);
                                                      }
                                                      §§goto(addr022c);
                                                   }
                                                   else
                                                   {
                                                      addr0215:
                                                      §§pop().fakeAnimationForQuest = EmergencyConstants.EMERGENCY_INPROGRESS;
                                                      addr020f:
                                                      if(_loc7_ || Boolean(_loc2_))
                                                      {
                                                         §§goto(addr0226);
                                                      }
                                                   }
                                                }
                                                §§goto(addr0308);
                                             }
                                             §§goto(addr0226);
                                          }
                                          §§goto(addr0215);
                                       }
                                       §§goto(addr0187);
                                    case 1:
                                       §§push(_loc4_.townHallFieldObjectVo);
                                       if(_loc7_)
                                       {
                                          §§push(EmergencyConstants.EMERGENCY_STATUS_STARTED);
                                          if(_loc7_)
                                          {
                                             §§pop().fakeAnimationForQuest = §§pop();
                                             if(_loc7_)
                                             {
                                                §§goto(addr01c4);
                                             }
                                             §§goto(addr0314);
                                          }
                                          else
                                          {
                                             §§goto(addr0215);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr020f);
                                       }
                                       §§goto(addr0215);
                                    case 2:
                                       TweenMax.delayedCall(3,this.completeIt,[_loc4_]);
                                       if(_loc7_)
                                       {
                                          sendNotification(ApplicationNotificationConstants.SPAWN_EMERGENCY_CITIZEN);
                                          if(!(_loc8_ && Boolean(param1)))
                                          {
                                             §§push(_loc4_.townHallFieldObjectVo);
                                             if(!_loc8_)
                                             {
                                                §§goto(addr020f);
                                             }
                                             §§goto(addr022b);
                                          }
                                       }
                                       §§goto(addr0308);
                                    default:
                                       §§goto(addr0308);
                                 }
                                 return;
                              }
                              if(_loc7_)
                              {
                                 addr0273:
                                 §§push(0);
                                 if(_loc7_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr02cf:
                                 §§push(2);
                                 if(_loc7_ || Boolean(this))
                                 {
                                 }
                              }
                              §§goto(addr02ef);
                              §§goto(addr02cf);
                           }
                           §§goto(addr02bd);
                        }
                        §§goto(addr0291);
                     }
                     §§goto(addr0273);
                  }
               }
               return;
            }
            §§goto(addr00de);
         }
         §§goto(addr0079);
      }
      
      private function completeIt(param1:TownHallFieldObject) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            param1.townHallFieldObjectVo.fakeAnimationForQuest = EmergencyConstants.EMERGENCY_STATUS_SUCCESS;
            if(!_loc2_)
            {
               param1.invalidateAnimationSlotManager();
               if(_loc3_ || Boolean(param1))
               {
                  addr0050:
                  param1.addEventListener(MouseEvent.CLICK,this.onTownHallClick);
               }
            }
            return;
         }
         §§goto(addr0050);
      }
      
      private function onTownHallClick(param1:ProxyEvent) : void
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc3_:DropIconVO = null;
         var _loc7_:QuestRewardInfoVo = null;
         if(_loc11_)
         {
            if(this._done)
            {
               if(!(_loc10_ && Boolean(this)))
               {
                  return;
               }
            }
         }
         this._done = true;
         var _loc2_:IObject3D = this._playfieldObjectsProxy.getTownHall();
         if(_loc11_ || Boolean(_loc2_))
         {
            §§push((_loc2_ as TownHallFieldObject).townHallFieldObjectVo);
            if(!(_loc10_ && Boolean(_loc3_)))
            {
               §§push(false);
               if(_loc11_ || Boolean(this))
               {
                  §§pop().hideIconsForMoveMode = §§pop();
                  if(_loc11_ || Boolean(this))
                  {
                     §§push((_loc2_ as TownHallFieldObject).townHallFieldObjectVo);
                     if(_loc11_)
                     {
                        addr00a8:
                        §§pop().fakeAnimationForQuest = "";
                        if(!(_loc10_ && Boolean(param1)))
                        {
                           addr00c4:
                           (_loc2_ as TownHallFieldObject).townHallFieldObjectVo.userInteractionLocked = false;
                           addr00c3:
                           addr00bb:
                           if(_loc11_ || Boolean(_loc3_))
                           {
                              (_loc2_ as TownHallFieldObject).invalidateIconStateManager();
                              if(_loc11_)
                              {
                                 addr00e4:
                                 (_loc2_ as TownHallFieldObject).invalidateAnimationSlotManager();
                              }
                              §§goto(addr00ed);
                           }
                           §§goto(addr00e4);
                        }
                        §§goto(addr00ed);
                     }
                     §§goto(addr00c3);
                  }
                  addr00ed:
                  var _loc4_:* = 0;
                  var _loc5_:Pt = IsoMath.isoToScreen(new Pt(_loc2_.x + _loc2_.width / 2,_loc2_.y + _loc2_.length / 2));
                  var _loc6_:Point = new Point(_loc5_.x,_loc5_.y);
                  for each(_loc7_ in this._questProxy.getQuestByID(this._questId).rewards)
                  {
                     §§push(_loc7_.type);
                     if(_loc11_ || Boolean(this))
                     {
                        §§push(ServerOutputConstants.GOOD);
                        if(!_loc10_)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(!(_loc10_ && Boolean(param1)))
                              {
                                 _loc3_ = new DropIconVO(_loc7_.questRewardVo.goodConfig.gfxId.toString(),_loc6_);
                                 if(!(_loc10_ && Boolean(_loc2_)))
                                 {
                                    TweenMax.delayedCall(_loc4_,facade.sendNotification,[ApplicationNotificationConstants.DROPICON_HANDLE_ISO_DROP,_loc3_]);
                                    if(!_loc11_)
                                    {
                                       continue;
                                    }
                                 }
                                 §§push(_loc4_);
                                 if(!(_loc10_ && Boolean(_loc2_)))
                                 {
                                    §§push(§§pop() + 0.1);
                                    if(_loc11_)
                                    {
                                       §§push(§§pop());
                                    }
                                 }
                                 _loc4_ = §§pop();
                                 continue;
                              }
                           }
                           else
                           {
                              §§push(_loc7_.type);
                              if(!(_loc10_ && Boolean(_loc2_)))
                              {
                                 §§push(ServerTagConstants.GOOD_KEY);
                                 if(!_loc10_)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       if(_loc11_)
                                       {
                                          _loc3_ = new DropIconVO(_loc7_.type,_loc6_);
                                          if(_loc10_ && Boolean(_loc3_))
                                          {
                                             continue;
                                          }
                                          TweenMax.delayedCall(_loc4_,facade.sendNotification,[ApplicationNotificationConstants.DROPICON_HANDLE_ISO_DROP,_loc3_]);
                                          if(!(_loc11_ || Boolean(_loc2_)))
                                          {
                                             continue;
                                          }
                                          §§push(_loc4_);
                                          if(!_loc10_)
                                          {
                                             §§push(§§pop() + 0.1);
                                             if(_loc11_)
                                             {
                                                addr026c:
                                                §§push(§§pop());
                                             }
                                             _loc4_ = §§pop();
                                             continue;
                                          }
                                          §§goto(addr026c);
                                       }
                                    }
                                    else
                                    {
                                       addr027d:
                                       addr0277:
                                       if(_loc7_.type != ServerOutputConstants.RESOURCE)
                                       {
                                          continue;
                                       }
                                    }
                                    addr0281:
                                    _loc3_ = new DropIconVO(_loc7_.type,_loc6_);
                                    if(_loc11_ || Boolean(this))
                                    {
                                       TweenMax.delayedCall(_loc4_,facade.sendNotification,[ApplicationNotificationConstants.DROPICON_HANDLE_ISO_DROP,_loc3_]);
                                       if(_loc11_ || Boolean(this))
                                       {
                                          §§push(_loc4_);
                                          if(!_loc10_)
                                          {
                                             §§push(§§pop() + 0.1);
                                             if(_loc11_ || Boolean(param1))
                                             {
                                                §§push(§§pop());
                                             }
                                          }
                                          _loc4_ = §§pop();
                                       }
                                    }
                                    continue;
                                 }
                                 §§goto(addr027d);
                              }
                              §§goto(addr0277);
                           }
                           §§goto(addr0281);
                        }
                        §§goto(addr027d);
                     }
                     §§goto(addr0277);
                  }
                  return;
               }
               §§goto(addr00c4);
            }
            §§goto(addr00a8);
         }
         §§goto(addr00bb);
      }
      
      private function prepareProxys() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this._questProxy = facade.retrieveProxy(QuestProxy.NAME) as QuestProxy;
            if(!(_loc2_ && _loc1_))
            {
               this._playfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
            }
         }
      }
   }
}

