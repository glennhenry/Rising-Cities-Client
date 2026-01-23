package net.bigpoint.cityrama.controller.urbies.walker
{
   import com.baseoneonline.flash.geom.IntPoint;
   import flash.utils.setTimeout;
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.interfaces.IWalker;
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.objects.SimpleWalker;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.model.urbies.CitizenConstants;
   import net.bigpoint.cityrama.model.urbies.PathWalkProxy;
   import net.bigpoint.cityrama.model.urbies.UrbiesLifeProxy;
   import net.bigpoint.cityrama.model.urbies.vo.AnimationConditionsVo;
   import net.bigpoint.cityrama.model.urbies.vo.UrbieLifeVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.UrbieObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class WalkerPathCompleteCommand extends SimpleCommand
   {
      
      public function WalkerPathCompleteCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = _temp_1;
         var _loc7_:AnimationConditionsVo = null;
         var _loc8_:SoundProxy = null;
         var _loc2_:IWalker = param1.getBody() as IWalker;
         var _loc3_:UrbiesLifeProxy = facade.retrieveProxy(UrbiesLifeProxy.NAME) as UrbiesLifeProxy;
         var _loc4_:PathWalkProxy = facade.retrieveProxy(PathWalkProxy.NAME) as PathWalkProxy;
         var _loc5_:UrbieLifeVo = _loc3_.dictionary[_loc2_.id];
         var _loc6_:UrbieObject = _loc3_.urbieObjectDictionary[_loc2_.id];
         if(_loc6_)
         {
            _loc7_ = null;
            for each(_loc7_ in _loc6_.animationStartConditions)
            {
               if(_loc7_.startCondition == param1.getName())
               {
                  break;
               }
            }
            if(!(_loc11_ && Boolean(_loc2_)))
            {
               if(_loc7_)
               {
                  if(!_loc11_)
                  {
                     §§push(_loc7_.framesetName);
                     if(_loc12_)
                     {
                        §§push("_movein");
                        if(_loc12_)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(!(_loc11_ && Boolean(param1)))
                              {
                                 _loc2_.pausePath();
                                 if(!(_loc11_ && Boolean(param1)))
                                 {
                                    addr0108:
                                    §§push(_loc6_.framesetStrategy);
                                    if(_loc12_)
                                    {
                                       §§push(_loc6_.directionStrategy);
                                       if(_loc12_ || Boolean(param1))
                                       {
                                          §§push(§§pop().direction);
                                          if(_loc12_ || Boolean(this))
                                          {
                                             §§push(_loc7_.framesetName);
                                             if(!(_loc11_ && Boolean(_loc2_)))
                                             {
                                                §§pop().playFrameset(§§pop() + §§pop());
                                                if(!_loc11_)
                                                {
                                                   setTimeout(this.animationComplete,_loc7_.duration * 1000,_loc6_,_loc2_);
                                                   if(!_loc12_)
                                                   {
                                                      addr0191:
                                                      _loc2_.pausePath();
                                                      if(!(_loc11_ && Boolean(_loc2_)))
                                                      {
                                                         addr01af:
                                                         §§push(_loc6_.framesetStrategy);
                                                         if(_loc12_ || Boolean(_loc3_))
                                                         {
                                                            addr01c7:
                                                            addr01c2:
                                                            §§push(_loc6_.directionStrategy.direction);
                                                            if(_loc12_)
                                                            {
                                                               addr01d5:
                                                               §§pop().playFrameset(§§pop() + _loc7_.framesetName);
                                                               addr01d0:
                                                               if(!_loc11_)
                                                               {
                                                                  addr01e0:
                                                                  _loc8_ = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
                                                                  _loc8_.stopEmergencyCitizenSoundByCitizenID(_loc6_.urbieLifeVo.config.citizenID);
                                                                  if(_loc12_)
                                                                  {
                                                                     setTimeout(this.animationComplete,_loc7_.duration * 1000,_loc6_,_loc2_);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr0243:
                                                                  setTimeout(this.animationComplete,_loc7_.duration * 1000,_loc6_,_loc2_);
                                                                  if(!_loc12_)
                                                                  {
                                                                     addr0288:
                                                                     _loc6_ = null;
                                                                     if(!_loc11_)
                                                                     {
                                                                        §§push(delete _loc3_.dictionary[_loc2_.id]);
                                                                        if(_loc12_)
                                                                        {
                                                                           §§pop();
                                                                           if(_loc12_ || Boolean(param1))
                                                                           {
                                                                              addr02bf:
                                                                              delete _loc3_.urbieObjectDictionary[_loc2_.id];
                                                                              if(_loc12_)
                                                                              {
                                                                                 addr02c6:
                                                                                 _loc4_.pathwalkManager.walkerContainer.killWalker(_loc2_);
                                                                              }
                                                                           }
                                                                           §§goto(addr036b);
                                                                        }
                                                                        §§goto(addr02bf);
                                                                     }
                                                                     §§goto(addr02c6);
                                                                  }
                                                               }
                                                               §§goto(addr036b);
                                                            }
                                                            else
                                                            {
                                                               addr0239:
                                                               §§pop().playFrameset(§§pop());
                                                               if(!_loc11_)
                                                               {
                                                                  §§goto(addr0243);
                                                               }
                                                               else
                                                               {
                                                                  addr027c:
                                                                  facade.sendNotification(ApplicationNotificationConstants.PLAYFIELD_REMOVE_ITEM,_loc6_);
                                                               }
                                                               §§goto(addr0288);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr0234:
                                                            §§push(_loc7_.framesetName);
                                                         }
                                                         §§goto(addr0239);
                                                      }
                                                      §§goto(addr0288);
                                                   }
                                                   §§goto(addr036b);
                                                }
                                                §§goto(addr0288);
                                             }
                                             §§goto(addr01d5);
                                          }
                                          §§goto(addr01d0);
                                       }
                                       §§goto(addr01c7);
                                    }
                                    §§goto(addr01c2);
                                 }
                                 §§goto(addr01e0);
                              }
                              §§goto(addr0191);
                           }
                           else
                           {
                              addr017f:
                              addr017b:
                              if(_loc7_.framesetName == "_emergency")
                              {
                                 if(_loc12_ || Boolean(_loc2_))
                                 {
                                    §§goto(addr0191);
                                 }
                                 §§goto(addr01af);
                              }
                              else
                              {
                                 _loc2_.pausePath();
                                 if(!_loc11_)
                                 {
                                    §§goto(addr0234);
                                    §§push(_loc6_.framesetStrategy);
                                 }
                              }
                           }
                           §§goto(addr036b);
                        }
                        §§goto(addr017f);
                     }
                     §§goto(addr017b);
                  }
                  §§goto(addr0191);
               }
               else if(!_loc2_.path.length)
               {
                  if(!(_loc11_ && Boolean(param1)))
                  {
                     §§goto(addr027c);
                  }
                  §§goto(addr0288);
               }
               §§goto(addr036b);
            }
            §§goto(addr0108);
         }
         else if(!_loc2_.path.length)
         {
            if(_loc12_ || Boolean(this))
            {
               _loc4_.removeListener(_loc2_);
               if(_loc12_)
               {
                  addr02fc:
                  facade.sendNotification(ApplicationNotificationConstants.PLAYFIELD_REMOVE_ITEM,_loc6_);
               }
               _loc6_ = null;
               if(!_loc11_)
               {
                  §§push(delete _loc3_.dictionary[_loc2_.id]);
                  if(!(_loc11_ && Boolean(_loc2_)))
                  {
                     §§pop();
                     if(_loc12_)
                     {
                        addr034f:
                        delete _loc3_.urbieObjectDictionary[_loc2_.id];
                        if(!(_loc11_ && Boolean(_loc3_)))
                        {
                           _loc4_.pathwalkManager.walkerContainer.killWalker(_loc2_);
                        }
                     }
                     §§goto(addr036b);
                  }
                  §§goto(addr034f);
               }
               §§goto(addr036b);
            }
            §§goto(addr02fc);
         }
         addr036b:
      }
      
      private function animationComplete(param1:UrbieObject, param2:SimpleWalker) : void
      {
         §§push(false);
         var _loc12_:Boolean = true;
         var _loc13_:* = §§pop();
         var _loc5_:IntPoint = null;
         var _loc6_:IntPoint = null;
         var _loc7_:IntPoint = null;
         var _loc8_:* = 0;
         var _loc9_:Vector.<IntPoint> = null;
         var _loc10_:* = 0;
         var _loc11_:Vector.<IntPoint> = null;
         var _loc3_:UrbiesLifeProxy = facade.retrieveProxy(UrbiesLifeProxy.NAME) as UrbiesLifeProxy;
         var _loc4_:PathWalkProxy = facade.retrieveProxy(PathWalkProxy.NAME) as PathWalkProxy;
         if(!(_loc13_ && Boolean(this)))
         {
            if(param1.animationStartConditions.length)
            {
               if(!_loc13_)
               {
                  addr007f:
                  if(param1.animationStartConditions[0].onCompleteAction == CitizenConstants.ANIMATION_ACTION_REMOVE)
                  {
                     if(!_loc13_)
                     {
                        param1.animationStartConditions.shift();
                        if(!(_loc13_ && Boolean(param2)))
                        {
                           facade.sendNotification(ApplicationNotificationConstants.PLAYFIELD_REMOVE_ITEM,param1);
                           if(!(_loc13_ && Boolean(this)))
                           {
                              addr00ca:
                              param1 = null;
                              if(!_loc13_)
                              {
                                 §§push(delete _loc3_.dictionary[param2.id]);
                                 if(!_loc13_)
                                 {
                                    §§pop();
                                    if(!(_loc13_ && Boolean(this)))
                                    {
                                       §§goto(addr00fe);
                                    }
                                    §§goto(addr0105);
                                 }
                                 addr00fe:
                                 delete _loc3_.urbieObjectDictionary[param2.id];
                                 if(!_loc13_)
                                 {
                                    addr0105:
                                    _loc4_.pathwalkManager.walkerContainer.killWalker(param2);
                                 }
                                 §§goto(addr0599);
                              }
                           }
                           else
                           {
                              addr013a:
                              param1.animationStartConditions.shift();
                              addr0142:
                              _loc9_ = _loc4_.pathwalkManager.terrain.map.usableTiles[param2.terrainType];
                              if(_loc12_ || Boolean(this))
                              {
                                 _loc10_ = Math.floor(_loc9_.length * Math.random());
                              }
                              _loc5_ = param2.currentCell;
                              _loc6_ = _loc9_[_loc10_];
                              if(!(_loc13_ && Boolean(param1)))
                              {
                                 param2.waypoints.push(_loc5_,_loc6_);
                                 if(_loc12_ || Boolean(_loc3_))
                                 {
                                    _loc4_.removeListener(param2);
                                    if(_loc12_)
                                    {
                                       addr01c7:
                                       param2.path = _loc4_.pathwalkManager.terrain.calculatePath(param2,param2.terrainType);
                                       if(!_loc13_)
                                       {
                                          addr01e2:
                                          _loc8_ = 0;
                                       }
                                       loop0:
                                       while(true)
                                       {
                                          §§push(param2.path.length < 2);
                                          if(!(_loc13_ && Boolean(param2)))
                                          {
                                             var _temp_9:* = §§pop();
                                             §§push(_temp_9);
                                             if(_temp_9)
                                             {
                                                if(!(_loc13_ && Boolean(param2)))
                                                {
                                                   §§pop();
                                                   if(!(_loc12_ || Boolean(param1)))
                                                   {
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc8_);
                                                      addr02a7:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() < 5);
                                                      }
                                                   }
                                                   addr02a5:
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                break loop0;
                                             }
                                             §§push(int(Math.floor(_loc9_.length * Math.random())));
                                             if(_loc12_)
                                             {
                                                _loc10_ = §§pop();
                                                if(_loc12_ || Boolean(_loc3_))
                                                {
                                                   break;
                                                }
                                                §§goto(addr02a5);
                                             }
                                             §§goto(addr02a7);
                                          }
                                          _loc5_ = param2.currentCell;
                                          _loc6_ = _loc9_[_loc10_];
                                          if(!(_loc13_ && Boolean(param2)))
                                          {
                                             param2.waypoints.push(_loc5_,_loc6_);
                                             if(!(_loc13_ && Boolean(param2)))
                                             {
                                                param2.path = _loc4_.pathwalkManager.terrain.calculatePath(param2,param2.terrainType);
                                                if(!_loc12_)
                                                {
                                                   continue;
                                                }
                                             }
                                             _loc8_++;
                                          }
                                       }
                                       _loc7_ = new IntPoint(_loc5_.x - param2.nextCell.x,_loc5_.y - param2.nextCell.y);
                                       _loc5_ = new IntPoint(_loc5_.x - _loc7_.x,_loc5_.y - _loc7_.y);
                                       if(!_loc13_)
                                       {
                                          param2.path.unshift(_loc5_);
                                          if(_loc12_)
                                          {
                                             §§goto(addr0311);
                                          }
                                          §§goto(addr0326);
                                       }
                                       addr0311:
                                       _loc4_.setupListener(param2);
                                       if(!(_loc13_ && Boolean(_loc3_)))
                                       {
                                          addr0326:
                                          §§push(_loc4_.pathwalkManager);
                                          if(_loc12_)
                                          {
                                             §§push(§§pop().walkman);
                                             if(_loc12_ || Boolean(this))
                                             {
                                                §§pop().stopWalker(param2);
                                                if(!_loc13_)
                                                {
                                                   addr0355:
                                                   _loc4_.pathwalkManager.walkman.runPath(param2);
                                                   addr0352:
                                                   if(_loc12_ || Boolean(this))
                                                   {
                                                      param2.resumePath();
                                                   }
                                                }
                                                §§goto(addr0599);
                                             }
                                             §§goto(addr0355);
                                          }
                                          §§goto(addr0352);
                                       }
                                       addr0599:
                                       return;
                                       addr026c:
                                    }
                                    §§goto(addr01e2);
                                 }
                                 §§goto(addr026c);
                              }
                              §§goto(addr01c7);
                           }
                           §§goto(addr0599);
                        }
                        §§goto(addr00ca);
                     }
                     §§goto(addr013a);
                  }
                  else if(param1.animationStartConditions[0].onCompleteAction == CitizenConstants.ANIMATION_ACTION_GO_RANDOM)
                  {
                     if(!(_loc13_ && Boolean(param2)))
                     {
                        §§goto(addr013a);
                     }
                     §§goto(addr0142);
                  }
                  else if(param1.animationStartConditions[0].onCompleteAction == CitizenConstants.ANIMATION_ACTION_GO_HOME)
                  {
                     if(_loc12_)
                     {
                        param1.animationStartConditions.shift();
                        if(!_loc13_)
                        {
                           if(param2.home is IntPoint)
                           {
                              addr03a7:
                              _loc5_ = param2.currentCell;
                              _loc6_ = param2.home;
                              if(!_loc13_)
                              {
                                 param2.waypoints.push(_loc5_,_loc6_);
                                 if(_loc12_)
                                 {
                                    _loc4_.removeListener(param2);
                                    if(_loc12_)
                                    {
                                       param2.path = _loc4_.pathwalkManager.terrain.calculatePath(param2,param2.terrainType);
                                       if(_loc12_)
                                       {
                                          addr03f8:
                                          §§push(0);
                                          if(!(_loc13_ && Boolean(this)))
                                          {
                                             _loc8_ = §§pop();
                                             if(!_loc13_)
                                             {
                                                loop7:
                                                while(true)
                                                {
                                                   §§push(param2.path.length < 2);
                                                   if(!(_loc13_ && Boolean(param1)))
                                                   {
                                                      var _temp_24:* = §§pop();
                                                      §§push(_temp_24);
                                                      if(_temp_24)
                                                      {
                                                         if(_loc12_ || Boolean(param2))
                                                         {
                                                            addr04cc:
                                                            §§pop();
                                                            if(_loc13_)
                                                            {
                                                               break;
                                                            }
                                                            loop6:
                                                            while(true)
                                                            {
                                                               §§push(_loc8_);
                                                               addr04d5:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() < 5);
                                                                  continue loop6;
                                                               }
                                                               break loop7;
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            break loop7;
                                                         }
                                                         _loc11_ = _loc4_.pathwalkManager.terrain.map.usableTiles[param2.terrainType];
                                                         if(!(_loc13_ && Boolean(_loc3_)))
                                                         {
                                                            _loc10_ = Math.floor(_loc11_.length * Math.random());
                                                         }
                                                         _loc5_ = param2.currentCell;
                                                         _loc6_ = _loc11_[_loc10_];
                                                         if(_loc12_ || Boolean(_loc3_))
                                                         {
                                                            param2.waypoints.push(_loc5_,_loc6_);
                                                            if(!_loc13_)
                                                            {
                                                               addr0485:
                                                               param2.path = _loc4_.pathwalkManager.terrain.calculatePath(param2,param2.terrainType);
                                                               if(!_loc12_)
                                                               {
                                                                  continue loop7;
                                                               }
                                                            }
                                                            _loc8_++;
                                                            continue loop7;
                                                         }
                                                         §§goto(addr0485);
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr04cc);
                                                }
                                                _loc7_ = new IntPoint(_loc5_.x - param2.nextCell.x,_loc5_.y - param2.nextCell.y);
                                                _loc5_ = new IntPoint(_loc5_.x - _loc7_.x,_loc5_.y - _loc7_.y);
                                                if(!_loc13_)
                                                {
                                                   param2.path.unshift(_loc5_);
                                                   if(!(_loc13_ && Boolean(this)))
                                                   {
                                                      addr053a:
                                                      _loc4_.setupListener(param2);
                                                      if(_loc12_)
                                                      {
                                                         §§push(_loc4_.pathwalkManager);
                                                         if(_loc12_ || Boolean(this))
                                                         {
                                                            §§push(§§pop().walkman);
                                                            if(_loc12_)
                                                            {
                                                               §§pop().stopWalker(param2);
                                                               if(_loc12_)
                                                               {
                                                                  addr0581:
                                                                  _loc4_.pathwalkManager.walkman.runPath(param2);
                                                                  addr057e:
                                                                  addr0579:
                                                                  if(_loc12_ || Boolean(this))
                                                                  {
                                                                     addr0594:
                                                                     param2.resumePath();
                                                                  }
                                                               }
                                                               §§goto(addr0599);
                                                            }
                                                            §§goto(addr0581);
                                                         }
                                                         §§goto(addr057e);
                                                      }
                                                      §§goto(addr0594);
                                                   }
                                                   §§goto(addr0579);
                                                }
                                                §§goto(addr053a);
                                                addr04a2:
                                             }
                                             §§goto(addr04d3);
                                          }
                                          §§goto(addr04d5);
                                       }
                                       §§goto(addr04a2);
                                    }
                                    §§goto(addr03f8);
                                 }
                                 §§goto(addr04d3);
                              }
                              §§goto(addr04a2);
                           }
                           §§goto(addr0599);
                        }
                     }
                     §§goto(addr03a7);
                  }
                  §§goto(addr0599);
               }
               §§goto(addr0142);
            }
            §§goto(addr0599);
         }
         §§goto(addr007f);
      }
   }
}

