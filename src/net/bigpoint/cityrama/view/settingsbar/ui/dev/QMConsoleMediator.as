package net.bigpoint.cityrama.view.settingsbar.ui.dev
{
   import flash.display.DisplayObject;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerFeatureConstants;
   import net.bigpoint.cityrama.controller.dev.DevMacroCommand;
   import net.bigpoint.cityrama.model.FeatureProxy;
   import net.bigpoint.cityrama.model.cityWheel.CityWheelProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.server.vo.server.CityWheelRewardDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigCityWheelBuffDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigImprovementDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ResourceDTO;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class QMConsoleMediator extends Mediator
   {
      
      public static const NAME:String = "QMConsoleMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || QMConsoleMediator)
      {
         NAME = "QMConsoleMediator";
      }
      
      private var _resourceSnapshot:Dictionary;
      
      private var _sniffWheel:Boolean;
      
      private var _citywheelProxy:CityWheelProxy;
      
      private var _cityWheelRewards:Vector.<Vector.<CityWheelRewardDTO>>;
      
      private var _drawnBuffs:Vector.<ConfigCityWheelBuffDTO>;
      
      private var _numSpins:int;
      
      private var _tempLottery:Vector.<CityWheelRewardDTO>;
      
      private var _lotteryList:Vector.<Vector.<CityWheelRewardDTO>>;
      
      private var _lotteryValidList:Vector.<Boolean>;
      
      private var _compareBags:Boolean;
      
      private var _timemesure:Number = 0;
      
      private var _drawnSlots:Dictionary;
      
      private var _maxSpins:int;
      
      public function QMConsoleMediator(param1:String, param2:DisplayObject)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(param1))
         {
            this._resourceSnapshot = new Dictionary();
            if(_loc3_ || _loc3_)
            {
               this._cityWheelRewards = new Vector.<Vector.<CityWheelRewardDTO>>();
               if(_loc3_ || _loc3_)
               {
                  addr0065:
                  this._drawnBuffs = new Vector.<ConfigCityWheelBuffDTO>(0);
                  if(_loc3_ || _loc3_)
                  {
                     addr0086:
                     this._lotteryList = new Vector.<Vector.<CityWheelRewardDTO>>();
                     if(!(_loc4_ && Boolean(this)))
                     {
                        §§goto(addr00b3);
                     }
                     §§goto(addr00df);
                  }
                  §§goto(addr00c7);
               }
               §§goto(addr0086);
            }
            §§goto(addr0065);
         }
         addr00b3:
         this._lotteryValidList = new Vector.<Boolean>();
         if(!_loc4_)
         {
            addr00c7:
            this._drawnSlots = new Dictionary();
            if(!(_loc4_ && Boolean(this)))
            {
               addr00df:
               super(param1,param2);
            }
         }
      }
      
      private static function cloneDict(param1:Dictionary) : Dictionary
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:Object = null;
         var _loc2_:Dictionary = new Dictionary();
         for(_loc3_ in param1)
         {
            if(_loc7_)
            {
               _loc2_[_loc3_] = param1[_loc3_];
            }
         }
         return _loc2_;
      }
      
      override public function onRegister() : void
      {
      }
      
      private function featureHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:FeatureProxy = null;
         var _loc3_:* = param1.currentTarget;
         if(_loc5_ || Boolean(this))
         {
            if(this.component.traceFeatureStats === _loc3_)
            {
               addr00dd:
               §§push(0);
               if(_loc5_ || Boolean(param1))
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
                  _loc2_ = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
                  if(_loc5_)
                  {
                     §§push(this.component);
                     if(!_loc4_)
                     {
                        §§push("CITYWHEEL ");
                        if(!_loc4_)
                        {
                           §§push(_loc2_.isFeatureEnabled(ServerFeatureConstants.CITYWHEEL));
                           if(_loc5_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc5_)
                              {
                                 §§pop().trace(§§pop());
                                 if(!(_loc4_ && Boolean(this)))
                                 {
                                    addr00a5:
                                    addr0087:
                                    addr0083:
                                    §§push(this.component);
                                    §§push("COASTAL_PLAYFIELD_SWITCH ");
                                    if(_loc5_ || Boolean(this))
                                    {
                                       addr0099:
                                       addr00a4:
                                       §§push(§§pop() + _loc2_.isFeatureEnabled(ServerFeatureConstants.COASTAL_PLAYFIELD_SWITCH));
                                    }
                                    §§pop().trace(§§pop());
                                 }
                                 break;
                              }
                              §§goto(addr0099);
                           }
                           §§goto(addr00a4);
                        }
                        §§goto(addr00a5);
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr0083);
            }
            return;
         }
         §§goto(addr00dd);
      }
      
      private function macroHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = param1.currentTarget;
         if(_loc4_ || _loc3_)
         {
            §§push(this.component);
            if(_loc4_)
            {
               if(§§pop().cleanBoulder === _loc2_)
               {
                  if(_loc4_ || Boolean(this))
                  {
                     §§push(0);
                     if(_loc4_ || _loc3_)
                     {
                     }
                  }
                  else
                  {
                     addr0165:
                     §§push(2);
                     if(_loc3_ && Boolean(param1))
                     {
                     }
                  }
               }
               else
               {
                  §§push(this.component);
                  if(_loc4_ || _loc3_)
                  {
                     if(§§pop().constructAll === _loc2_)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(1);
                           if(_loc4_ || Boolean(param1))
                           {
                           }
                        }
                        else
                        {
                           addr0197:
                           §§push(3);
                           if(_loc4_ || Boolean(_loc2_))
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(this.component);
                        if(_loc4_)
                        {
                           if(§§pop().inagurateAll === _loc2_)
                           {
                              if(!(_loc3_ && Boolean(_loc2_)))
                              {
                                 §§goto(addr0165);
                              }
                              else
                              {
                                 §§goto(addr0197);
                              }
                           }
                           else
                           {
                              §§push(this.component);
                              if(_loc4_)
                              {
                                 addr0182:
                                 if(§§pop().repairAll === _loc2_)
                                 {
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       §§goto(addr0197);
                                    }
                                    else
                                    {
                                       addr01c4:
                                       §§push(4);
                                       if(_loc4_)
                                       {
                                       }
                                    }
                                    §§goto(addr01dc);
                                 }
                                 else
                                 {
                                    §§goto(addr01bc);
                                 }
                              }
                              addr01bc:
                              if(this.component.unlockAllExpansions === _loc2_)
                              {
                                 §§goto(addr01c4);
                              }
                              else
                              {
                                 §§push(5);
                              }
                              §§goto(addr01dc);
                           }
                           §§goto(addr01dc);
                        }
                        §§goto(addr01bc);
                     }
                     §§goto(addr01dc);
                  }
                  §§goto(addr01bc);
               }
               addr01dc:
               switch(§§pop())
               {
                  case 0:
                     sendNotification(ApplicationNotificationConstants.DEV_MACRO,DevMacroCommand.DELETE_ALL_BOULDER);
                     if(_loc3_ && Boolean(_loc2_))
                     {
                     }
                     break;
                  case 1:
                     sendNotification(ApplicationNotificationConstants.DEV_MACRO,DevMacroCommand.INSTANT_BUILD_ALL);
                     if(_loc3_)
                     {
                     }
                     break;
                  case 2:
                     sendNotification(ApplicationNotificationConstants.DEV_MACRO,DevMacroCommand.INAGURATE_ALL);
                     if(_loc4_ || Boolean(this))
                     {
                     }
                     break;
                  case 3:
                     sendNotification(ApplicationNotificationConstants.DEV_MACRO,DevMacroCommand.REPAIR_ALL);
                     if(_loc3_ && _loc3_)
                     {
                     }
                     break;
                  case 4:
                     sendNotification(ApplicationNotificationConstants.DEV_MACRO,DevMacroCommand.UNLOCK_ALL_EXPANSIONS);
                     if(_loc3_)
                     {
                     }
               }
               return;
            }
            §§goto(addr0182);
         }
         §§goto(addr0197);
      }
      
      private function handleKeyboardDown(param1:KeyboardEvent) : void
      {
      }
      
      private function resourceDivHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:ResourceDTO = null;
         var _loc2_:PlayerProxy = facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
         if(_loc6_)
         {
            §§push(this.component);
            if(_loc6_)
            {
               if(§§pop().divResourceButton.selected)
               {
                  if(_loc6_)
                  {
                     addr004e:
                     this._resourceSnapshot = new Dictionary();
                     if(!(_loc7_ && Boolean(_loc2_)))
                     {
                        this._resourceSnapshot = cloneDict(_loc2_.player.resources);
                        if(!(_loc7_ && Boolean(this)))
                        {
                           addr008b:
                           this.component.trace("Snapshot Taken");
                           addr0087:
                        }
                        §§goto(addr01b9);
                     }
                  }
                  §§goto(addr0087);
               }
               else
               {
                  var _loc4_:int = 0;
                  var _loc5_:* = this._resourceSnapshot;
                  loop0:
                  while(true)
                  {
                     §§push(§§hasnext(_loc5_,_loc4_));
                     if(!_loc6_)
                     {
                        break;
                     }
                     if(§§pop())
                     {
                        _loc3_ = §§nextvalue(_loc4_,_loc5_);
                        if(!_loc7_)
                        {
                           §§push(this.component);
                           §§push(_loc2_.player.resources[_loc3_.configId].amount - _loc3_.amount + " ");
                           if(!_loc7_)
                           {
                              §§push(§§pop() + _loc3_.config.type);
                           }
                           §§pop().trace(§§pop());
                        }
                        continue;
                     }
                     if(_loc6_ || Boolean(this))
                     {
                        if(!(_loc7_ && Boolean(_loc2_)))
                        {
                           if(_loc6_ || Boolean(param1))
                           {
                              _loc4_ = 0;
                              if(!_loc7_)
                              {
                                 addr0137:
                                 _loc5_ = _loc2_.player.resources;
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc5_,_loc4_));
                                    break loop0;
                                 }
                                 addr01a6:
                                 addr019f:
                              }
                              if(!_loc7_)
                              {
                                 addr01b0:
                                 this._resourceSnapshot = new Dictionary();
                              }
                              §§goto(addr01b9);
                           }
                           §§goto(addr01b0);
                        }
                        §§goto(addr0137);
                     }
                     §§goto(addr01a6);
                  }
                  while(§§pop())
                  {
                     _loc3_ = §§nextvalue(_loc4_,_loc5_);
                     if(_loc6_)
                     {
                        if(this._resourceSnapshot[_loc3_.config.id] == null)
                        {
                           if(_loc6_ || Boolean(_loc3_))
                           {
                              §§push(this.component);
                              §§push(_loc3_.amount.toString() + " ");
                              if(_loc6_)
                              {
                                 §§push(§§pop() + _loc3_.config.type);
                              }
                              §§pop().trace(§§pop());
                           }
                        }
                     }
                     §§goto(addr019f);
                  }
                  §§goto(addr01a6);
               }
               return;
            }
            §§goto(addr008b);
         }
         §§goto(addr004e);
      }
      
      private function get component() : QMConsole
      {
         return super.getViewComponent() as QMConsole;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
      }
      
      private function handleWheelSniffer(param1:MouseEvent) : void
      {
      }
      
      private function manageTokens() : void
      {
      }
      
      private function printWheelResult() : void
      {
      }
      
      private function traceWheelResults(param1:Vector.<Vector.<CityWheelRewardDTO>>, param2:Boolean, param3:Vector.<ConfigCityWheelBuffDTO> = null) : void
      {
         §§push(false);
         var _loc22_:Boolean = true;
         var _loc23_:* = §§pop();
         var _loc10_:Vector.<CityWheelRewardDTO> = null;
         var _loc11_:* = undefined;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc14_:CityWheelRewardDTO = null;
         var _loc15_:* = 0;
         var _loc16_:ConfigCityWheelBuffDTO = null;
         var _loc4_:Dictionary = new Dictionary();
         var _loc5_:Dictionary = new Dictionary();
         var _loc6_:Dictionary = new Dictionary();
         var _loc7_:Dictionary = new Dictionary();
         var _loc8_:Dictionary = new Dictionary();
         var _loc9_:ConfigDTO = (facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy).config;
         var _loc17_:* = 0;
         var _loc18_:* = param1;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc18_,_loc17_));
            if(_loc23_ && Boolean(param3))
            {
               break;
            }
            if(§§pop())
            {
               _loc10_ = §§nextvalue(_loc17_,_loc18_);
               if(_loc22_ || param2)
               {
                  var _loc19_:* = 0;
                  if(!_loc23_)
                  {
                     for each(_loc14_ in _loc10_)
                     {
                        if(_loc22_)
                        {
                           if(param2)
                           {
                              if(_loc22_ || Boolean(this))
                              {
                                 addr00eb:
                                 §§push(int(_loc14_.outputAmount));
                                 if(!_loc23_)
                                 {
                                    addr00ea:
                                    §§push(§§pop());
                                 }
                                 _loc15_ = §§pop();
                                 if(!(_loc22_ || Boolean(param3)))
                                 {
                                    continue;
                                 }
                                 if(_loc14_.goodConfig)
                                 {
                                    if(!_loc23_)
                                    {
                                       if(_loc4_[_loc14_.goodConfig.id])
                                       {
                                          if(!(_loc23_ && Boolean(param3)))
                                          {
                                             _loc4_[_loc14_.goodConfig.id] += _loc15_;
                                             if(_loc22_ || Boolean(param1))
                                             {
                                             }
                                             addr0169:
                                             if(_loc14_.improvementConfig)
                                             {
                                                if(!_loc23_)
                                                {
                                                   if(_loc5_[_loc14_.improvementConfig.id])
                                                   {
                                                      if(_loc23_)
                                                      {
                                                         continue;
                                                      }
                                                      addr018e:
                                                      _loc5_[_loc14_.improvementConfig.id] += _loc15_;
                                                      if(!(_loc23_ && Boolean(this)))
                                                      {
                                                         addr01d7:
                                                         if(_loc14_.playfieldItemConfig)
                                                         {
                                                            if(!(_loc23_ && Boolean(param1)))
                                                            {
                                                               if(_loc6_[_loc14_.playfieldItemConfig.id])
                                                               {
                                                                  if(_loc22_)
                                                                  {
                                                                     _loc6_[_loc14_.playfieldItemConfig.id] += _loc15_;
                                                                     if(!_loc23_)
                                                                     {
                                                                        addr023d:
                                                                        if(!_loc14_.resourceConfig)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(_loc22_ || Boolean(param3))
                                                                        {
                                                                           addr0254:
                                                                           if(!_loc7_[_loc14_.resourceConfig.id])
                                                                           {
                                                                              _loc7_[_loc14_.resourceConfig.id] = _loc15_;
                                                                              continue;
                                                                           }
                                                                           if(_loc23_ && Boolean(this))
                                                                           {
                                                                              continue;
                                                                           }
                                                                        }
                                                                     }
                                                                     addr0272:
                                                                     _loc7_[_loc14_.resourceConfig.id] += _loc15_;
                                                                     if(_loc22_)
                                                                     {
                                                                     }
                                                                     continue;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  _loc6_[_loc14_.playfieldItemConfig.id] = _loc15_;
                                                                  if(_loc22_)
                                                                  {
                                                                     §§goto(addr023d);
                                                                  }
                                                               }
                                                               §§goto(addr0254);
                                                            }
                                                         }
                                                         §§goto(addr023d);
                                                      }
                                                      §§goto(addr0272);
                                                   }
                                                   else
                                                   {
                                                      _loc5_[_loc14_.improvementConfig.id] = _loc15_;
                                                      if(_loc22_ || Boolean(this))
                                                      {
                                                         §§goto(addr01d7);
                                                      }
                                                   }
                                                   §§goto(addr0254);
                                                }
                                             }
                                             §§goto(addr01d7);
                                          }
                                       }
                                       else
                                       {
                                          _loc4_[_loc14_.goodConfig.id] = _loc15_;
                                          if(!_loc23_)
                                          {
                                             §§goto(addr0169);
                                          }
                                       }
                                       §§goto(addr023d);
                                    }
                                    §§goto(addr0272);
                                 }
                                 §§goto(addr0169);
                              }
                              §§goto(addr023d);
                           }
                           else
                           {
                              §§push(1);
                              if(!_loc23_)
                              {
                                 §§goto(addr00ea);
                              }
                           }
                           §§goto(addr00eb);
                        }
                        §§goto(addr018e);
                     }
                  }
               }
               continue;
            }
            if(_loc22_)
            {
               if(!_loc23_)
               {
                  if(!(_loc23_ && Boolean(param1)))
                  {
                     if(param3 != null)
                     {
                        if(!_loc23_)
                        {
                           addr02ef:
                           §§push(0);
                           if(_loc22_ || param2)
                           {
                              _loc17_ = §§pop();
                              if(_loc22_)
                              {
                                 _loc18_ = param3;
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc18_,_loc17_));
                                    if(_loc22_ || Boolean(param1))
                                    {
                                       if(§§pop())
                                       {
                                          _loc16_ = §§nextvalue(_loc17_,_loc18_);
                                          if(!(_loc23_ && Boolean(this)))
                                          {
                                             if(!_loc8_[_loc16_.localeId])
                                             {
                                                _loc8_[_loc16_.localeId] = 1;
                                                continue;
                                             }
                                             if(!_loc22_)
                                             {
                                                continue;
                                             }
                                          }
                                          _loc19_ = _loc8_;
                                          var _loc20_:*;
                                          var _loc21_:* = _loc19_[_loc20_ = _loc16_.localeId] + 1;
                                          if(_loc22_)
                                          {
                                             _loc19_[_loc20_] = _loc21_;
                                          }
                                          if(_loc23_ && Boolean(param3))
                                          {
                                          }
                                          continue;
                                       }
                                       if(_loc22_)
                                       {
                                          if(!_loc23_)
                                          {
                                             if(_loc22_)
                                             {
                                                addr03ad:
                                                §§push(0);
                                                if(!_loc23_)
                                                {
                                                   addr03b5:
                                                   _loc17_ = §§pop();
                                                   if(!_loc23_)
                                                   {
                                                      _loc18_ = _loc4_;
                                                      loop7:
                                                      while(true)
                                                      {
                                                         §§push(§§hasnext(_loc18_,_loc17_));
                                                         if(!(_loc22_ || param2))
                                                         {
                                                            break;
                                                         }
                                                         if(!§§pop())
                                                         {
                                                            if(!_loc23_)
                                                            {
                                                               addr0475:
                                                               if(_loc22_ || Boolean(param3))
                                                               {
                                                                  if(!_loc23_)
                                                                  {
                                                                     §§push(0);
                                                                     if(!(_loc23_ && param2))
                                                                     {
                                                                        _loc17_ = §§pop();
                                                                        if(!(_loc23_ && Boolean(param1)))
                                                                        {
                                                                           addr04ad:
                                                                           _loc18_ = _loc5_;
                                                                           while(true)
                                                                           {
                                                                              §§push(§§hasnext(_loc18_,_loc17_));
                                                                              if(!_loc23_)
                                                                              {
                                                                                 break loop0;
                                                                              }
                                                                              addr06eb:
                                                                              addr07cb:
                                                                              loop3:
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    if(!_loc23_)
                                                                                    {
                                                                                       addr06f5:
                                                                                       if(!(_loc23_ && Boolean(this)))
                                                                                       {
                                                                                          addr0705:
                                                                                          if(_loc22_ || Boolean(this))
                                                                                          {
                                                                                             if(param3 != null)
                                                                                             {
                                                                                                if(_loc22_)
                                                                                                {
                                                                                                   addr0721:
                                                                                                   this.component.trace("drawn Buffs:");
                                                                                                   if(_loc22_)
                                                                                                   {
                                                                                                      addr0735:
                                                                                                      _loc17_ = 0;
                                                                                                      addr0733:
                                                                                                      if(!(_loc23_ && Boolean(param1)))
                                                                                                      {
                                                                                                         addr0745:
                                                                                                         _loc18_ = _loc8_;
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§hasnext(_loc18_,_loc17_));
                                                                                                            break loop3;
                                                                                                         }
                                                                                                      }
                                                                                                      addr07d1:
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             return;
                                                                                          }
                                                                                          §§goto(addr0733);
                                                                                       }
                                                                                       §§goto(addr07d1);
                                                                                    }
                                                                                    addr07cf:
                                                                                    §§goto(addr07d1);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    _loc11_ = §§nextname(_loc17_,_loc18_);
                                                                                    if(_loc22_)
                                                                                    {
                                                                                       _loc13_ = Number(_loc11_);
                                                                                       if(!(_loc23_ && Boolean(param1)))
                                                                                       {
                                                                                          _loc12_ = int(_loc7_[_loc11_]);
                                                                                          if(!(_loc23_ && Boolean(param1)))
                                                                                          {
                                                                                             addr06bb:
                                                                                             §§push(this.component);
                                                                                             §§push(_loc12_ + " , ");
                                                                                             if(!_loc23_)
                                                                                             {
                                                                                                §§push(§§pop() + _loc9_.resourceStrings[_loc13_]);
                                                                                             }
                                                                                             §§pop().trace(§§pop());
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§hasnext(_loc18_,_loc17_));
                                                                                             if(!(_loc22_ || Boolean(param3)))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue loop3;
                                                                                          }
                                                                                          break;
                                                                                          addr06da:
                                                                                       }
                                                                                       §§goto(addr06bb);
                                                                                    }
                                                                                    §§goto(addr06da);
                                                                                 }
                                                                              }
                                                                              for(; §§pop(); §§push(§§hasnext(_loc18_,_loc17_)))
                                                                              {
                                                                                 _loc11_ = §§nextname(_loc17_,_loc18_);
                                                                                 if(!_loc23_)
                                                                                 {
                                                                                    _loc13_ = Number(_loc11_);
                                                                                    if(_loc23_ && param2)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                 }
                                                                                 _loc12_ = int(_loc8_[_loc11_]);
                                                                                 if(!_loc23_)
                                                                                 {
                                                                                    §§push(this.component);
                                                                                    §§push(_loc12_ + " , ");
                                                                                    if(_loc22_)
                                                                                    {
                                                                                       §§push(LocaUtils);
                                                                                       §§push("rcl.booklayer.cityWheel");
                                                                                       §§push("rcl.booklayer.cityWheel.buff.name.capital.");
                                                                                       if(!(_loc23_ && Boolean(this)))
                                                                                       {
                                                                                          §§push(§§pop() + _loc13_);
                                                                                       }
                                                                                       §§push(§§pop() + §§pop().getString(§§pop(),§§pop()));
                                                                                    }
                                                                                    §§pop().trace(§§pop());
                                                                                 }
                                                                              }
                                                                              §§goto(addr07cf);
                                                                           }
                                                                           addr0568:
                                                                        }
                                                                        addr0656:
                                                                        if(!_loc23_)
                                                                        {
                                                                           addr065e:
                                                                           §§push(0);
                                                                           if(!_loc23_)
                                                                           {
                                                                              addr0666:
                                                                              _loc17_ = §§pop();
                                                                              if(!_loc23_)
                                                                              {
                                                                                 addr066e:
                                                                                 _loc18_ = _loc7_;
                                                                                 §§goto(addr06da);
                                                                              }
                                                                              §§goto(addr07d1);
                                                                           }
                                                                           §§goto(addr0735);
                                                                        }
                                                                        §§goto(addr0721);
                                                                     }
                                                                     addr0593:
                                                                     _loc17_ = §§pop();
                                                                     if(!(_loc23_ && Boolean(param1)))
                                                                     {
                                                                        _loc18_ = _loc6_;
                                                                        while(true)
                                                                        {
                                                                           §§push(§§hasnext(_loc18_,_loc17_));
                                                                           if(!_loc23_)
                                                                           {
                                                                              break loop7;
                                                                           }
                                                                           §§goto(addr06eb);
                                                                        }
                                                                        addr0633:
                                                                     }
                                                                     §§goto(addr066e);
                                                                  }
                                                                  §§goto(addr065e);
                                                               }
                                                               §§goto(addr07d1);
                                                            }
                                                            addr064e:
                                                            if(_loc22_)
                                                            {
                                                               §§goto(addr0656);
                                                            }
                                                            §§goto(addr0745);
                                                         }
                                                         else
                                                         {
                                                            _loc11_ = §§nextname(_loc17_,_loc18_);
                                                            if(_loc22_)
                                                            {
                                                               _loc13_ = Number(_loc11_);
                                                               if(!_loc23_)
                                                               {
                                                                  addr03f2:
                                                                  _loc12_ = int(_loc4_[_loc11_]);
                                                                  if(!(_loc22_ || Boolean(param1)))
                                                                  {
                                                                     continue;
                                                                  }
                                                               }
                                                               §§push(this.component);
                                                               §§push(_loc12_ + " , ");
                                                               if(!(_loc23_ && param2))
                                                               {
                                                                  §§push(LocaUtils);
                                                                  §§push("rcl.goods.goodname");
                                                                  §§push("rcl.goods.goodname.");
                                                                  if(_loc22_ || Boolean(this))
                                                                  {
                                                                     §§push(§§pop() + ConfigGoodDTO(_loc9_.goods[_loc13_]).localeId);
                                                                  }
                                                                  §§push(§§pop() + §§pop().getString(§§pop(),§§pop()));
                                                               }
                                                               §§pop().trace(§§pop());
                                                               continue;
                                                            }
                                                            §§goto(addr03f2);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            if(_loc22_ || param2)
                                                            {
                                                               §§goto(addr064e);
                                                            }
                                                            §§goto(addr07cf);
                                                         }
                                                         else
                                                         {
                                                            _loc11_ = §§nextname(_loc17_,_loc18_);
                                                            if(_loc22_)
                                                            {
                                                               _loc13_ = Number(_loc11_);
                                                               if(_loc22_ || param2)
                                                               {
                                                                  _loc12_ = int(_loc6_[_loc11_]);
                                                                  if(_loc22_)
                                                                  {
                                                                     addr05e8:
                                                                     §§push(this.component);
                                                                     §§push(_loc12_ + " , ");
                                                                     if(_loc22_ || param2)
                                                                     {
                                                                        §§push(LocaUtils);
                                                                        §§push("rcl.playfielditems.name");
                                                                        §§push("rcl.playfielditems.name.");
                                                                        if(!(_loc23_ && Boolean(param3)))
                                                                        {
                                                                           §§push(§§pop() + ConfigPlayfieldItemDTO(_loc9_.items[_loc13_]).localeId);
                                                                        }
                                                                        §§push(§§pop() + §§pop().getString(§§pop(),§§pop()));
                                                                     }
                                                                     §§pop().trace(§§pop());
                                                                  }
                                                                  §§goto(addr0633);
                                                               }
                                                               §§goto(addr05e8);
                                                            }
                                                            §§goto(addr0633);
                                                         }
                                                      }
                                                      §§goto(addr06eb);
                                                   }
                                                   §§goto(addr07d1);
                                                }
                                                §§goto(addr0735);
                                             }
                                             addr058b:
                                             §§push(0);
                                             if(!_loc23_)
                                             {
                                                §§goto(addr0593);
                                             }
                                             §§goto(addr0666);
                                          }
                                          §§goto(addr04ad);
                                       }
                                       §§goto(addr0475);
                                    }
                                    §§goto(addr07cb);
                                 }
                              }
                              §§goto(addr0705);
                           }
                           §§goto(addr03b5);
                        }
                        §§goto(addr058b);
                     }
                     §§goto(addr03ad);
                  }
                  §§goto(addr02ef);
               }
               §§goto(addr0656);
            }
            §§goto(addr06f5);
         }
         while(true)
         {
            if(!§§pop())
            {
               if(!_loc23_)
               {
                  if(!_loc23_)
                  {
                     if(!_loc23_)
                     {
                        §§goto(addr058b);
                     }
                     §§goto(addr0733);
                  }
                  §§goto(addr0656);
               }
               §§goto(addr06f5);
            }
            else
            {
               _loc11_ = §§nextname(_loc17_,_loc18_);
               if(!_loc23_)
               {
                  _loc13_ = Number(_loc11_);
                  if(!(_loc23_ && Boolean(param1)))
                  {
                     addr04dd:
                     _loc12_ = int(_loc5_[_loc11_]);
                     if(_loc22_)
                     {
                        §§push(this.component);
                        §§push(_loc12_ + " , ");
                        if(!_loc23_)
                        {
                           §§push(LocaUtils);
                           §§push("rcl.improvements.name");
                           §§push("rcl.improvements.name.");
                           if(!_loc23_)
                           {
                              §§push(§§pop() + ConfigImprovementDTO(_loc9_.improvements[_loc13_]).locaId);
                           }
                           §§push(§§pop().getString(§§pop(),§§pop()));
                           if(_loc22_ || Boolean(param1))
                           {
                              addr0564:
                              §§push(§§pop() + §§pop());
                              if(_loc22_ || Boolean(this))
                              {
                                 §§push(§§pop() + " ");
                                 if(!_loc23_)
                                 {
                                    addr0563:
                                    §§push(§§pop() + ConfigImprovementDTO(_loc9_.improvements[_loc13_]).quality);
                                 }
                              }
                              §§pop().trace(§§pop());
                              §§goto(addr0568);
                           }
                           §§goto(addr0563);
                        }
                        §§goto(addr0564);
                     }
                  }
                  §§goto(addr0568);
               }
               §§goto(addr04dd);
            }
         }
         §§goto(addr06eb);
      }
   }
}

