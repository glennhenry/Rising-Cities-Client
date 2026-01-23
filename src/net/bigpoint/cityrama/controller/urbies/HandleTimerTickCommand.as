package net.bigpoint.cityrama.controller.urbies
{
   import com.baseoneonline.flash.geom.IntPoint;
   import net.bigpoint.as3toolbox.pathwalkmanager.path.Terrain;
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.interfaces.IWalkerSetter;
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.objects.InfiniteWalker;
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.objects.SimpleWalker;
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.objects.StaticWalker;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IGameObjectVo;
   import net.bigpoint.cityrama.model.field.interfaces.IPlaneObjectVo;
   import net.bigpoint.cityrama.model.globalbalance.GlobalBalanceProxy;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.urbies.CitizensProxy;
   import net.bigpoint.cityrama.model.urbies.PathWalkProxy;
   import net.bigpoint.cityrama.model.urbies.PreSpawnProxy;
   import net.bigpoint.cityrama.model.urbies.SpawnProxy;
   import net.bigpoint.cityrama.model.urbies.UrbiesLifeProxy;
   import net.bigpoint.cityrama.model.urbies.vo.UrbieLifeVo;
   import net.bigpoint.cityrama.view.field.FieldMediator;
   import net.bigpoint.util.RisingBitmap;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class HandleTimerTickCommand extends SimpleCommand
   {
      
      private static var _nextUrbie:UrbieLifeVo;
      
      private static var _nextCar:UrbieLifeVo;
      
      private const FEWER_CITIZEN_MAXAMOUNT:int = 5;
      
      private var _urbieLifeProxy:UrbiesLifeProxy;
      
      private var _pathWalkProxy:PathWalkProxy;
      
      private var _fieldMediator:FieldMediator;
      
      private var _appModeProxy:ApplicationModeProxy;
      
      private var _citizensProxy:CitizensProxy;
      
      private var _preSpawnProxy:PreSpawnProxy;
      
      private var _citizenMaxAmount:int;
      
      public function HandleTimerTickCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc5_:* = 0;
         var _loc6_:* = NaN;
         if(!(_loc8_ && _loc3_))
         {
            this._urbieLifeProxy = facade.retrieveProxy(UrbiesLifeProxy.NAME) as UrbiesLifeProxy;
            if(_loc7_)
            {
               this._pathWalkProxy = facade.retrieveProxy(PathWalkProxy.NAME) as PathWalkProxy;
               if(!(_loc8_ && _loc3_))
               {
                  this._appModeProxy = facade.retrieveProxy(ApplicationModeProxy.NAME) as ApplicationModeProxy;
                  if(!_loc8_)
                  {
                     addr007b:
                     this._citizensProxy = facade.retrieveProxy(CitizensProxy.NAME) as CitizensProxy;
                     if(!_loc8_)
                     {
                        addr0093:
                        this._fieldMediator = facade.retrieveMediator(FieldMediator.NAME) as FieldMediator;
                        if(!_loc8_)
                        {
                           addr00ac:
                           this._preSpawnProxy = facade.retrieveProxy(PreSpawnProxy.NAME) as PreSpawnProxy;
                        }
                        var _loc2_:GlobalBalanceProxy = facade.retrieveProxy(GlobalBalanceProxy.NAME) as GlobalBalanceProxy;
                        var _loc3_:EventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
                        var _loc4_:SpawnProxy = facade.retrieveProxy(SpawnProxy.NAME) as SpawnProxy;
                        if(!(_loc8_ && Boolean(this)))
                        {
                           if(_loc2_ == null)
                           {
                              if(_loc7_)
                              {
                                 return;
                              }
                              addr0240:
                              §§push(this.citizensDataLoaded());
                           }
                           else
                           {
                              §§push(this._citizensProxy);
                              if(_loc7_ || Boolean(_loc2_))
                              {
                                 §§push(§§pop().loaded);
                                 if(!(_loc8_ && Boolean(this)))
                                 {
                                    if(!§§pop())
                                    {
                                       if(_loc7_)
                                       {
                                          §§push(this._citizensProxy);
                                          if(_loc7_)
                                          {
                                             addr014e:
                                             §§push(§§pop().loading);
                                             if(_loc7_)
                                             {
                                                if(!§§pop())
                                                {
                                                   if(_loc7_ || Boolean(_loc3_))
                                                   {
                                                      addr0179:
                                                      this._citizensProxy.startLoad();
                                                      if(_loc8_)
                                                      {
                                                         addr02bc:
                                                         _loc5_ = int(_loc3_.currentRunningEventQuestGfxId);
                                                         addr02b2:
                                                         if(!_loc8_)
                                                         {
                                                            addr02c4:
                                                            §§push(_loc3_.currentRunningEventStepProgress);
                                                            if(_loc7_ || Boolean(_loc2_))
                                                            {
                                                               addr02d7:
                                                               §§push(§§pop());
                                                            }
                                                            _loc6_ = §§pop();
                                                            if(_loc7_)
                                                            {
                                                               addr02ed:
                                                               this.spawnUrbie(_loc5_,_loc6_);
                                                               if(_loc7_ || Boolean(param1))
                                                               {
                                                                  addr0305:
                                                                  this.spawnCarCitizen(_loc5_,_loc6_);
                                                                  if(_loc8_)
                                                                  {
                                                                  }
                                                               }
                                                               §§goto(addr031f);
                                                            }
                                                            §§goto(addr0305);
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr020c);
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                addr01b9:
                                                if(!§§pop())
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      return;
                                                   }
                                                   addr01f6:
                                                   §§push(this.shouldSpawnMore());
                                                   if(_loc7_)
                                                   {
                                                      addr0202:
                                                      if(!§§pop())
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            addr020c:
                                                            return;
                                                         }
                                                         §§goto(addr02c4);
                                                      }
                                                      else
                                                      {
                                                         addr0213:
                                                         §§push(this.isNormalMode());
                                                         if(!(_loc8_ && Boolean(_loc2_)))
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               if(_loc7_ || Boolean(param1))
                                                               {
                                                                  return;
                                                               }
                                                               §§goto(addr02c4);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr0240);
                                                            }
                                                            §§goto(addr031f);
                                                         }
                                                         addr0246:
                                                         if(§§pop())
                                                         {
                                                            if(_loc7_ || Boolean(param1))
                                                            {
                                                               §§push(this._preSpawnProxy.queLength);
                                                               if(_loc7_)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        addr026f:
                                                                        §§push(0);
                                                                        if(_loc7_)
                                                                        {
                                                                           _loc5_ = §§pop();
                                                                           if(_loc7_)
                                                                           {
                                                                              §§push(0);
                                                                              if(_loc7_)
                                                                              {
                                                                                 addr0287:
                                                                                 §§push(§§pop());
                                                                                 if(_loc7_ || Boolean(_loc3_))
                                                                                 {
                                                                                    _loc6_ = §§pop();
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       if(_loc3_ != null)
                                                                                       {
                                                                                          if(!(_loc8_ && Boolean(_loc2_)))
                                                                                          {
                                                                                             §§goto(addr02b2);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr02ed);
                                                                                 }
                                                                                 §§goto(addr02d7);
                                                                              }
                                                                              §§goto(addr02bc);
                                                                           }
                                                                           §§goto(addr02b2);
                                                                        }
                                                                        §§goto(addr0287);
                                                                     }
                                                                     §§goto(addr02c4);
                                                                  }
                                                                  else
                                                                  {
                                                                     this.spawnUrbieQue();
                                                                  }
                                                                  §§goto(addr031f);
                                                               }
                                                               §§goto(addr02bc);
                                                            }
                                                            §§goto(addr026f);
                                                         }
                                                      }
                                                      §§goto(addr031f);
                                                   }
                                                   §§goto(addr0246);
                                                }
                                                else
                                                {
                                                   §§push(_loc4_.enabled);
                                                   if(!(_loc8_ && Boolean(param1)))
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(!(_loc8_ && Boolean(this)))
                                                         {
                                                            return;
                                                         }
                                                         §§goto(addr02ed);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr01f6);
                                                      }
                                                      §§goto(addr031f);
                                                   }
                                                }
                                                §§goto(addr0202);
                                             }
                                             §§goto(addr031f);
                                          }
                                          §§goto(addr0179);
                                       }
                                       addr031f:
                                       return;
                                    }
                                    §§push(this.minimumRoadAvailable());
                                    if(!(_loc8_ && Boolean(param1)))
                                    {
                                       if(!§§pop())
                                       {
                                          if(_loc7_)
                                          {
                                             return;
                                          }
                                          §§goto(addr0213);
                                       }
                                       else
                                       {
                                          §§push(this.fieldReady());
                                          if(_loc7_)
                                          {
                                             §§goto(addr01b9);
                                          }
                                       }
                                       §§goto(addr0246);
                                    }
                                 }
                                 §§goto(addr01b9);
                              }
                              §§goto(addr014e);
                           }
                           §§goto(addr0246);
                        }
                        §§goto(addr0305);
                     }
                  }
                  §§goto(addr00ac);
               }
               §§goto(addr0093);
            }
            §§goto(addr007b);
         }
         §§goto(addr0093);
      }
      
      private function spawnUrbieQue() : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc1_:UrbieLifeVo = null;
         var _loc2_:Vector.<IntPoint> = null;
         var _loc3_:IntPoint = null;
         var _loc4_:* = 0;
         var _loc5_:Number = NaN;
         var _loc6_:IWalkerSetter = null;
         var _loc7_:* = 0;
         loop0:
         while(true)
         {
            §§push(this._preSpawnProxy.queLength);
            while(§§pop())
            {
               §§push(this._citizenMaxAmount);
               if(!(_loc8_ || Boolean(_loc3_)))
               {
                  continue;
               }
               if(§§pop() == this._pathWalkProxy.pathwalkManager.walkerContainer.walkers.length)
               {
                  if(!_loc8_)
                  {
                     break;
                  }
                  _loc6_ = this._pathWalkProxy.pathwalkManager.walkerContainer.walkers.shift() as IWalkerSetter;
                  _loc6_.pausePath();
                  if(_loc8_)
                  {
                     _loc6_.pathComplete();
                     if(!(_loc9_ && Boolean(_loc1_)))
                     {
                        this._pathWalkProxy.pathwalkManager.walkerContainer.killWalker(_loc6_);
                     }
                  }
               }
               _loc1_ = new UrbieLifeVo(this._preSpawnProxy.nextUrbie());
               _loc6_ = new InfiniteWalker(_loc1_.id,_loc1_.config.terrain);
               _loc2_ = this._pathWalkProxy.pathwalkManager.terrain.map.usableTiles[_loc6_.terrainType];
               if(!(_loc9_ && Boolean(_loc3_)))
               {
                  §§push(0);
                  if(!_loc9_)
                  {
                     _loc4_ = §§pop();
                     if(_loc8_)
                     {
                        loop2:
                        while(true)
                        {
                           §§push(_loc4_);
                           if(_loc8_ || Boolean(_loc1_))
                           {
                              while(true)
                              {
                                 if(§§pop() >= 2)
                                 {
                                    if(_loc8_ || Boolean(_loc3_))
                                    {
                                       §§push(2);
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    §§push(int(Math.floor(_loc2_.length * Math.random())));
                                    if(!_loc8_)
                                    {
                                       break;
                                    }
                                    _loc7_ = §§pop();
                                    if(_loc8_)
                                    {
                                       while(true)
                                       {
                                          _loc3_ = _loc2_[_loc7_];
                                          if(_loc8_)
                                          {
                                             _loc6_.waypoints.push(_loc3_);
                                             if(_loc9_ && Boolean(this))
                                             {
                                                continue loop2;
                                             }
                                          }
                                          _loc4_++;
                                          continue loop2;
                                       }
                                       addr0142:
                                    }
                                 }
                                 addr019a:
                                 _loc6_.speed = this._pathWalkProxy.pathwalkManager.terrain.tileSize / _loc5_;
                                 if(!(_loc9_ && Boolean(_loc3_)))
                                 {
                                    addr01ca:
                                    this._urbieLifeProxy.addUrbie(_loc1_);
                                    if(_loc8_)
                                    {
                                       this._pathWalkProxy.addWalker(_loc6_);
                                    }
                                 }
                                 continue loop0;
                              }
                              addr017b:
                           }
                           break;
                        }
                        _loc5_ = §§pop();
                        if(!_loc9_)
                        {
                           §§goto(addr019a);
                        }
                        §§goto(addr01ca);
                     }
                     §§goto(addr0142);
                  }
                  §§goto(addr017b);
               }
               §§goto(addr01ca);
            }
            break;
         }
      }
      
      private function fieldReady() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            §§push(this._fieldMediator);
            if(_loc1_ || Boolean(this))
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     addr0053:
                     §§push(false);
                     if(!_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr0067:
                     addr006b:
                     if(!this._fieldMediator.isoScene)
                     {
                        if(!_loc2_)
                        {
                           §§push(false);
                           if(_loc1_)
                           {
                              §§goto(addr007d);
                           }
                        }
                        else
                        {
                           addr007e:
                           return true;
                        }
                        return §§pop();
                     }
                     §§goto(addr007e);
                  }
                  addr007d:
                  return §§pop();
               }
               §§goto(addr0067);
            }
            §§goto(addr006b);
         }
         §§goto(addr0053);
      }
      
      private function isNormalMode() : Boolean
      {
         return this._appModeProxy.mode == ApplicationModeProxy.MODE_NORMAL;
      }
      
      private function minimumRoadAvailable() : Boolean
      {
         return this._pathWalkProxy.pathwalkManager.terrain.map.usableTiles[Terrain.TYPE_ALL_TERRAINS].length > 4;
      }
      
      private function shouldSpawnMore() : Boolean
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc3_:SimpleWalker = null;
         var _loc4_:PlayerResourceProxy = null;
         if(!_loc7_)
         {
            §§push(this._preSpawnProxy.queLength);
            if(_loc8_)
            {
               if(§§pop())
               {
                  if(_loc8_ || Boolean(this))
                  {
                     return true;
                  }
               }
               addr0048:
               §§push(int(this._pathWalkProxy.pathwalkManager.terrain.map.usableTiles[Terrain.TYPE_ALL_TERRAINS].length));
            }
            var _loc1_:* = §§pop();
            if(_loc8_ || _loc2_)
            {
               if(OptionsGlobalVariables.getInstance().normalCitizenAmount)
               {
                  if(_loc8_ || Boolean(_loc3_))
                  {
                     _loc4_ = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
                     addr0090:
                     if(_loc8_)
                     {
                        this._citizenMaxAmount = Math.min(46 * (1 - Math.pow(2,-0.01 * _loc1_)),_loc4_.population);
                     }
                  }
               }
               else
               {
                  this._citizenMaxAmount = this.FEWER_CITIZEN_MAXAMOUNT;
               }
               var _loc2_:* = 0;
               for each(_loc3_ in this._pathWalkProxy.pathwalkManager.walkerContainer.walkers)
               {
                  if(!_loc7_)
                  {
                     if(_loc3_ is StaticWalker)
                     {
                        continue;
                     }
                     if(!(_loc8_ || Boolean(_loc3_)))
                     {
                        continue;
                     }
                  }
                  §§push(_loc2_);
                  if(_loc8_ || Boolean(_loc2_))
                  {
                     §§push(§§pop() + 1);
                     if(!_loc7_)
                     {
                        addr0149:
                        §§push(§§pop());
                     }
                     _loc2_ = §§pop();
                     continue;
                  }
                  §§goto(addr0149);
               }
               return _loc2_ < this._citizenMaxAmount - 1;
            }
            §§goto(addr0090);
         }
         §§goto(addr0048);
      }
      
      private function citizensDataLoaded() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push(this._citizensProxy.xml == null);
         if(!(_loc1_ && _loc1_))
         {
            return !§§pop();
         }
      }
      
      private function spawnUrbie(param1:int, param2:Number) : void
      {
         §§push(false);
         var _loc14_:Boolean = true;
         var _loc15_:* = §§pop();
         var _loc6_:IntPoint = null;
         var _loc8_:* = NaN;
         var _loc10_:RisingBitmap = null;
         var _loc11_:int = 0;
         var _loc12_:* = 0;
         var _loc13_:IGameObjectVo = null;
         if(!(_loc15_ && Boolean(param1)))
         {
            if(_nextUrbie == null)
            {
               if(_loc14_ || Boolean(param1))
               {
                  _nextUrbie = this._urbieLifeProxy.randomCitizen(param1,param2);
               }
            }
         }
         var _loc3_:InfiniteWalker = new InfiniteWalker(_nextUrbie.id,_nextUrbie.config.terrain);
         if(_loc14_)
         {
            _nextUrbie.walker = _loc3_;
         }
         var _loc4_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc5_:Vector.<IntPoint> = this._pathWalkProxy.pathwalkManager.terrain.map.usableTiles[_loc3_.terrainType];
         §§push(Boolean(_loc5_));
         if(!(_loc15_ && Boolean(param2)))
         {
            var _temp_5:* = §§pop();
            §§push(_temp_5);
            if(_temp_5)
            {
               if(_loc14_ || Boolean(_loc3_))
               {
                  §§pop();
                  if(_loc14_ || Boolean(_loc3_))
                  {
                     addr00f1:
                     if(Boolean(_loc5_.length))
                     {
                        if(!(_loc15_ && Boolean(this)))
                        {
                           _loc11_ = 0;
                        }
                        loop0:
                        while(true)
                        {
                           §§push(_loc11_);
                           while(true)
                           {
                              if(§§pop() >= 10)
                              {
                                 if(!_loc15_)
                                 {
                                    break;
                                 }
                                 addr0204:
                                 §§push(2.5);
                                 if(_loc14_)
                                 {
                                    §§push(§§pop());
                                 }
                                 var _loc7_:* = §§pop();
                                 if(_loc14_ || Boolean(param2))
                                 {
                                    _loc3_.speed = this._pathWalkProxy.pathwalkManager.terrain.tileSize / _loc7_;
                                 }
                                 var _loc9_:GlobalBalanceProxy = facade.retrieveProxy(GlobalBalanceProxy.NAME) as GlobalBalanceProxy;
                                 §§push(_loc9_.happinessPercental);
                                 if(_loc14_)
                                 {
                                    §§push(-0.66);
                                    if(_loc14_ || Boolean(_loc3_))
                                    {
                                       if(§§pop() <= §§pop())
                                       {
                                          if(!_loc15_)
                                          {
                                             §§push(Math.random());
                                             if(!(_loc15_ && Boolean(this)))
                                             {
                                                _loc8_ = §§pop();
                                                if(_loc14_)
                                                {
                                                   _loc3_.speed = this._pathWalkProxy.pathwalkManager.terrain.tileSize / 3.5;
                                                   if(_loc14_ || Boolean(this))
                                                   {
                                                      addr02a7:
                                                      §§push(_loc8_);
                                                      if(_loc14_)
                                                      {
                                                         addr02af:
                                                         §§push(0.25);
                                                         if(!_loc15_)
                                                         {
                                                            addr02b7:
                                                            if(§§pop() <= §§pop())
                                                            {
                                                               if(!(_loc15_ && Boolean(this)))
                                                               {
                                                                  addr02c9:
                                                                  _loc10_ = new RisingBitmap("citizens_ui_icons","citizens_ui_icons","Citizen_Icons_sadmood");
                                                                  if(!(_loc15_ && Boolean(this)))
                                                                  {
                                                                     _nextUrbie.icon = _loc10_;
                                                                  }
                                                                  addr0388:
                                                                  this._urbieLifeProxy.addUrbie(_nextUrbie);
                                                                  if(_loc14_)
                                                                  {
                                                                     this._pathWalkProxy.addWalker(_loc3_);
                                                                     if(!_loc15_)
                                                                     {
                                                                        addr03a8:
                                                                        _nextUrbie = null;
                                                                     }
                                                                     §§goto(addr03af);
                                                                  }
                                                                  §§goto(addr03a8);
                                                               }
                                                               §§goto(addr03af);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr0314:
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               if(_loc14_ || Boolean(this))
                                                               {
                                                                  §§push(Math.random());
                                                                  if(!_loc15_)
                                                                  {
                                                                     addr0333:
                                                                     var _temp_23:* = §§pop();
                                                                     §§push(_temp_23);
                                                                     §§push(_temp_23);
                                                                     if(!(_loc15_ && Boolean(this)))
                                                                     {
                                                                        addr0342:
                                                                        _loc8_ = §§pop();
                                                                        addr0344:
                                                                        §§push(0.25);
                                                                     }
                                                                     if(§§pop() <= §§pop())
                                                                     {
                                                                        if(!_loc15_)
                                                                        {
                                                                           addr0350:
                                                                           _loc10_ = new RisingBitmap("citizens_ui_icons","citizens_ui_icons","Citizen_Icons_happymood");
                                                                           if(_loc14_ || Boolean(param2))
                                                                           {
                                                                              _nextUrbie.icon = _loc10_;
                                                                           }
                                                                           §§goto(addr0388);
                                                                        }
                                                                        §§goto(addr03a8);
                                                                     }
                                                                     §§goto(addr0388);
                                                                  }
                                                                  §§goto(addr0344);
                                                               }
                                                               §§goto(addr0350);
                                                            }
                                                         }
                                                         §§goto(addr0388);
                                                      }
                                                      else
                                                      {
                                                         addr0304:
                                                         §§push(0.66);
                                                         if(!(_loc15_ && Boolean(param2)))
                                                         {
                                                            §§goto(addr0314);
                                                         }
                                                      }
                                                      §§goto(addr0342);
                                                   }
                                                   §§goto(addr02c9);
                                                }
                                                §§goto(addr02a7);
                                             }
                                             §§goto(addr0333);
                                          }
                                          addr03af:
                                          return;
                                       }
                                       §§push(_loc9_.happinessPercental);
                                       if(_loc14_)
                                       {
                                          §§goto(addr0304);
                                       }
                                       §§goto(addr0333);
                                    }
                                    §§goto(addr02b7);
                                 }
                                 §§goto(addr02af);
                              }
                              else
                              {
                                 §§push(int(Math.floor(_loc5_.length * Math.random())));
                                 if(!(_loc14_ || Boolean(_loc3_)))
                                 {
                                    continue;
                                 }
                                 _loc12_ = §§pop();
                                 if(_loc15_ && Boolean(_loc3_))
                                 {
                                    break;
                                 }
                                 _loc6_ = _loc5_[_loc12_];
                                 _loc13_ = _loc4_.getGameObjectByCuboid(new Cuboid(_loc6_.x,_loc6_.y,1,1,1,0));
                                 §§push(_loc13_ is IPlaneObjectVo);
                                 if(!(_loc15_ && Boolean(param1)))
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc14_ || Boolean(param2))
                                       {
                                          addr0196:
                                          if((_loc13_ as IPlaneObjectVo).isConnectedToStreet)
                                          {
                                             if(!(_loc14_ || Boolean(_loc3_)))
                                             {
                                                break;
                                             }
                                             _loc3_.waypoints.push(_loc6_);
                                             if(_loc15_)
                                             {
                                                break;
                                             }
                                             addr01c3:
                                             if(_loc3_.waypoints.length == 2)
                                             {
                                                if(_loc14_)
                                                {
                                                   break;
                                                }
                                                continue loop0;
                                             }
                                          }
                                          addr01d9:
                                          _loc11_++;
                                          continue loop0;
                                       }
                                       §§goto(addr01c3);
                                    }
                                    §§goto(addr01d9);
                                 }
                                 §§goto(addr0196);
                              }
                           }
                           break;
                        }
                        addr01db:
                     }
                     if(_loc3_.waypoints.length != 2)
                     {
                        if(_loc14_ || Boolean(param1))
                        {
                           return;
                        }
                     }
                     §§goto(addr0204);
                  }
                  §§goto(addr01db);
               }
            }
         }
         §§goto(addr00f1);
      }
      
      private function spawnCarCitizen(param1:int, param2:Number) : void
      {
         var _temp_1:* = true;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = _temp_1;
         var _loc5_:IntPoint = null;
         var _loc7_:int = 0;
         var _loc8_:Number = NaN;
         var _loc9_:* = NaN;
         var _loc10_:GlobalBalanceProxy = null;
         var _loc11_:RisingBitmap = null;
         var _loc12_:* = 0;
         var _loc13_:IGameObjectVo = null;
         if(!_loc14_)
         {
            if(_nextCar == null)
            {
               if(_loc15_ || Boolean(this))
               {
                  addr0059:
                  _nextCar = this._urbieLifeProxy.randomCar(param1,param2);
               }
            }
            var _loc3_:InfiniteWalker = new InfiniteWalker(_nextCar.id,_nextCar.config.terrain);
            if(!(_loc14_ && Boolean(param2)))
            {
               _nextCar.walker = _loc3_;
            }
            var _loc4_:Vector.<IntPoint> = this._pathWalkProxy.pathwalkManager.terrain.map.usableTiles[_loc3_.terrainType];
            var _loc6_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
            if(!(_loc14_ && Boolean(_loc3_)))
            {
               §§push(Boolean(_loc4_));
               if(!(_loc14_ && Boolean(this)))
               {
                  var _temp_6:* = §§pop();
                  §§push(_temp_6);
                  if(_temp_6)
                  {
                     if(_loc15_)
                     {
                        §§pop();
                        if(!(_loc14_ && Boolean(_loc3_)))
                        {
                           §§goto(addr0100);
                        }
                        §§goto(addr010a);
                     }
                  }
               }
               addr0100:
               §§goto(addr00fb);
            }
            addr00fb:
            if(Boolean(_loc4_.length))
            {
               if(_loc15_)
               {
                  addr010a:
                  _loc7_ = 0;
               }
               loop0:
               while(true)
               {
                  §§push(_loc7_);
                  while(§§pop() < 2)
                  {
                     §§push(int(Math.floor(_loc4_.length * Math.random())));
                     if(!(_loc15_ || Boolean(param1)))
                     {
                        continue;
                     }
                     _loc12_ = §§pop();
                     if(!_loc15_)
                     {
                        break;
                     }
                     _loc5_ = _loc4_[_loc12_];
                     _loc13_ = _loc6_.getGameObjectByCuboid(new Cuboid(_loc5_.x,_loc5_.y,1,1,1,0));
                     §§push(_loc13_ is IPlaneObjectVo);
                     if(!(_loc14_ && Boolean(param1)))
                     {
                        if(§§pop())
                        {
                           if(_loc15_ || Boolean(param2))
                           {
                              addr0195:
                              if((_loc13_ as IPlaneObjectVo).isConnectedToStreet)
                              {
                                 if(_loc15_ || Boolean(_loc3_))
                                 {
                                    _loc3_.waypoints.push(_loc5_);
                                    if(!_loc15_)
                                    {
                                       continue loop0;
                                    }
                                 }
                                 if(_loc3_.waypoints.length == 2)
                                 {
                                    if(_loc15_ || Boolean(param1))
                                    {
                                       break;
                                    }
                                    addr0222:
                                    _loc8_ = 1;
                                    if(_loc15_)
                                    {
                                       _loc3_.speed = this._pathWalkProxy.pathwalkManager.terrain.tileSize / _loc8_;
                                    }
                                 }
                                 else
                                 {
                                    addr01e1:
                                    _loc7_++;
                                    if(!(_loc14_ && Boolean(param2)))
                                    {
                                       continue loop0;
                                    }
                                 }
                                 _loc10_ = facade.retrieveProxy(GlobalBalanceProxy.NAME) as GlobalBalanceProxy;
                                 §§push(_loc10_.energyPercental);
                                 if(_loc15_)
                                 {
                                    §§push(-0.66);
                                    if(!_loc14_)
                                    {
                                       if(§§pop() <= §§pop())
                                       {
                                          if(!_loc14_)
                                          {
                                             _loc3_.speed = this._pathWalkProxy.pathwalkManager.terrain.tileSize / 1.5;
                                             if(_loc15_ || Boolean(_loc3_))
                                             {
                                                §§push(Math.random());
                                                if(!(_loc14_ && Boolean(this)))
                                                {
                                                   var _temp_38:* = §§pop();
                                                   §§push(_temp_38);
                                                   §§push(_temp_38);
                                                   if(_loc15_ || Boolean(_loc3_))
                                                   {
                                                      _loc9_ = §§pop();
                                                      if(_loc15_ || Boolean(this))
                                                      {
                                                         addr02c6:
                                                         §§push(0.25);
                                                         if(_loc15_ || Boolean(param1))
                                                         {
                                                            addr02d6:
                                                            if(§§pop() <= §§pop())
                                                            {
                                                               if(_loc15_)
                                                               {
                                                                  _loc11_ = new RisingBitmap("citizens_ui_icons","citizens_ui_icons","Citizen_Icons_lowenergy");
                                                                  if(!_loc14_)
                                                                  {
                                                                     _nextCar.icon = _loc11_;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr035f:
                                                                  _loc11_ = new RisingBitmap("citizens_ui_icons","citizens_ui_icons","Citizen_Icons_highenergy");
                                                                  if(!(_loc14_ && Boolean(param1)))
                                                                  {
                                                                     _nextCar.icon = _loc11_;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr0349:
                                                            _loc9_ = §§pop();
                                                            addr034b:
                                                            addr034d:
                                                            if(§§pop() <= 0.25)
                                                            {
                                                               if(_loc15_ || Boolean(param2))
                                                               {
                                                                  §§goto(addr035f);
                                                               }
                                                               §§goto(addr03c8);
                                                            }
                                                         }
                                                         addr0399:
                                                         this._urbieLifeProxy.addUrbie(_nextCar);
                                                         if(_loc15_)
                                                         {
                                                            addr03aa:
                                                            this._pathWalkProxy.addWalker(_loc3_);
                                                            if(_loc15_ || Boolean(param1))
                                                            {
                                                               addr03c1:
                                                               _nextCar = null;
                                                            }
                                                            §§goto(addr03c8);
                                                         }
                                                         §§goto(addr03c1);
                                                      }
                                                      §§goto(addr034b);
                                                   }
                                                   §§goto(addr02d6);
                                                }
                                                else
                                                {
                                                   addr031b:
                                                   §§push(0.66);
                                                   if(_loc15_)
                                                   {
                                                      addr0323:
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         if(!_loc14_)
                                                         {
                                                            addr032d:
                                                            §§push(Math.random());
                                                            if(_loc15_ || Boolean(this))
                                                            {
                                                               addr0342:
                                                               var _temp_46:* = §§pop();
                                                               §§push(_temp_46);
                                                               §§push(_temp_46);
                                                               if(_loc15_)
                                                               {
                                                                  §§goto(addr0349);
                                                               }
                                                               §§goto(addr034d);
                                                            }
                                                            §§goto(addr034b);
                                                         }
                                                         §§goto(addr03c8);
                                                      }
                                                      §§goto(addr0399);
                                                   }
                                                }
                                                §§goto(addr0349);
                                             }
                                             §§goto(addr032d);
                                          }
                                          §§goto(addr03aa);
                                       }
                                       else
                                       {
                                          §§push(_loc10_.energyPercental);
                                          if(!(_loc14_ && Boolean(_loc3_)))
                                          {
                                             §§goto(addr031b);
                                          }
                                       }
                                       §§goto(addr0342);
                                    }
                                    §§goto(addr0323);
                                 }
                                 §§goto(addr02c6);
                              }
                              §§goto(addr01e1);
                           }
                           §§goto(addr0222);
                        }
                        §§goto(addr01e1);
                     }
                     §§goto(addr0195);
                  }
                  break;
               }
               if(_loc3_.waypoints.length != 2)
               {
                  if(!(_loc14_ && Boolean(_loc3_)))
                  {
                     return;
                  }
               }
               §§goto(addr0222);
            }
            addr03c8:
            return;
         }
         §§goto(addr0059);
      }
   }
}

