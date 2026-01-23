package net.bigpoint.cityrama.model.field.ground
{
   import flash.geom.Rectangle;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IGameObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGroundRestrictionDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class RestrictionProxy extends Proxy
   {
      
      public static const NAME:String = "RestrictionProxy";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         NAME = "RestrictionProxy";
      }
      
      private var _configProxy:GameConfigProxy;
      
      private var _gridProxy:GridProxy;
      
      private var _restrictionGridVisibility:Boolean;
      
      private var _restrictionGridSource:Vector.<ConfigGroundRestrictionDTO>;
      
      private var _restrictionMatrix:Array;
      
      private var _playfieldProxy:PlayfieldProxy;
      
      private var _restrictionItem:IGameObjectVo;
      
      private var _ignoreStreets:Boolean;
      
      public function RestrictionProxy(param1:String = null, param2:Object = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(this)))
         {
            super(param1,param2);
            if(!_loc3_)
            {
               this._configProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
               addr002b:
               if(_loc4_ || Boolean(this))
               {
                  §§goto(addr0060);
               }
               §§goto(addr007f);
            }
            addr0060:
            this._gridProxy = facade.retrieveProxy(GridProxy.NAME) as GridProxy;
            if(!(_loc3_ && Boolean(param2)))
            {
               addr007f:
               this._playfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
            }
            return;
         }
         §§goto(addr002b);
      }
      
      public function getWhiteListRestrictionsForItem(param1:ConfigPlayfieldItemDTO) : Vector.<ConfigGroundRestrictionDTO>
      {
         §§push(false);
         var _loc12_:Boolean = true;
         var _loc13_:* = §§pop();
         var _loc3_:ConfigGroundRestrictionDTO = null;
         var _loc4_:Number = NaN;
         var _loc5_:* = NaN;
         var _loc2_:Vector.<ConfigGroundRestrictionDTO> = new Vector.<ConfigGroundRestrictionDTO>();
         for each(_loc3_ in this._configProxy.config.restrictions)
         {
            if(_loc13_)
            {
               continue;
            }
            var _loc8_:int = 0;
            if(_loc12_)
            {
               var _loc9_:* = _loc3_.configTagIds;
               if(!(_loc13_ && Boolean(this)))
               {
                  for each(_loc4_ in _loc9_)
                  {
                     if(!(_loc12_ || Boolean(_loc3_)))
                     {
                        continue;
                     }
                  }
                  addr011e:
                  continue;
                  addr0115:
               }
               while(true)
               {
                  var _loc10_:int = 0;
                  if(_loc12_)
                  {
                     var _loc11_:* = param1.tagIds;
                     if(_loc12_)
                     {
                        for each(_loc10_ in _loc11_)
                        {
                           §§push(_loc10_);
                           if(!_loc13_)
                           {
                              _loc5_ = §§pop();
                              if(!(_loc13_ && Boolean(_loc2_)))
                              {
                                 addr00d6:
                                 if(_loc4_ != _loc5_)
                                 {
                                    continue;
                                 }
                                 if(_loc13_)
                                 {
                                    continue;
                                 }
                              }
                              while(_loc3_.whiteList)
                              {
                                 if(_loc12_ || Boolean(_loc2_))
                                 {
                                    _loc2_.push(_loc3_);
                                 }
                              }
                              continue;
                              addr00e2:
                           }
                           §§goto(addr00d6);
                        }
                        addr0113:
                        §§goto(addr0115);
                     }
                     §§goto(addr00e2);
                  }
                  §§goto(addr0113);
               }
            }
            §§goto(addr011e);
         }
         return _loc2_;
      }
      
      public function getAllRestrictionsForItem(param1:ConfigPlayfieldItemDTO) : Vector.<ConfigGroundRestrictionDTO>
      {
         §§push(false);
         var _loc15_:Boolean = true;
         var _loc16_:* = §§pop();
         var _loc3_:ConfigGroundRestrictionDTO = null;
         var _loc4_:Number = NaN;
         var _loc5_:* = NaN;
         var _loc6_:ConfigGroundRestrictionDTO = null;
         var _loc7_:String = null;
         var _loc8_:ConfigGroundRestrictionDTO = null;
         var _loc2_:Vector.<ConfigGroundRestrictionDTO> = new Vector.<ConfigGroundRestrictionDTO>();
         var _loc9_:int = 0;
         var _loc10_:* = this._configProxy.config.restrictions;
         while(true)
         {
            §§push(§§hasnext(_loc10_,_loc9_));
            if(_loc16_ && Boolean(_loc2_))
            {
               break;
            }
            if(§§pop())
            {
               _loc3_ = §§nextvalue(_loc9_,_loc10_);
               if(_loc15_)
               {
                  if(_loc3_.playfieldId == this._playfieldProxy.config.id)
                  {
                     if(_loc15_ || Boolean(this))
                     {
                        var _loc11_:int = 0;
                        if(_loc15_)
                        {
                           var _loc12_:* = _loc3_.configTagIds;
                           if(_loc16_)
                           {
                           }
                           for each(_loc4_ in _loc12_)
                           {
                              if(!(_loc15_ || Boolean(this)))
                              {
                                 continue;
                              }
                              var _loc13_:int = 0;
                              if(_loc15_)
                              {
                                 var _loc14_:* = param1.tagIds;
                                 if(_loc15_)
                                 {
                                    for each(_loc13_ in _loc14_)
                                    {
                                       §§push(_loc13_);
                                       if(!_loc16_)
                                       {
                                          _loc5_ = §§pop();
                                          if(_loc16_ && Boolean(this))
                                          {
                                             continue;
                                          }
                                          §§push(_loc4_);
                                       }
                                       if(§§pop() != _loc5_)
                                       {
                                          continue;
                                       }
                                       if(_loc16_)
                                       {
                                          continue;
                                       }
                                    }
                                    addr0119:
                                    continue;
                                    addr0102:
                                 }
                                 while(true)
                                 {
                                    _loc2_.push(_loc3_);
                                    §§goto(addr0102);
                                 }
                              }
                              §§goto(addr0119);
                           }
                        }
                     }
                  }
               }
               continue;
            }
            if(!(_loc16_ && Boolean(_loc3_)))
            {
               if(!(_loc16_ && Boolean(_loc2_)))
               {
                  if(_loc15_)
                  {
                     if(_loc2_.length == 0)
                     {
                        addr016a:
                        _loc9_ = 0;
                        addr016e:
                        _loc10_ = param1.tags;
                        addr0190:
                        if(!(_loc16_ && Boolean(param1)))
                        {
                           addr0218:
                           §§push(§§hasnext(_loc10_,_loc9_));
                           break;
                        }
                        for each(_loc8_ in this._configProxy.config.restrictions)
                        {
                           if(!_loc16_)
                           {
                              if(_loc7_.indexOf(_loc8_.groundType) == -1)
                              {
                                 continue;
                              }
                              if(_loc15_)
                              {
                                 if(!_loc8_.whiteList)
                                 {
                                    continue;
                                 }
                              }
                           }
                           _loc6_ = new ConfigGroundRestrictionDTO({
                              "bw":true,
                              "gt":_loc8_.groundType
                           });
                           break;
                        }
                        if(!(_loc16_ && Boolean(_loc3_)))
                        {
                           if(!_loc6_)
                           {
                              §§goto(addr0218);
                           }
                        }
                        addr022b:
                        if(!(_loc16_ && Boolean(_loc2_)))
                        {
                           if(_loc6_)
                           {
                              if(_loc15_ || Boolean(_loc3_))
                              {
                                 addr0251:
                                 _loc2_.push(_loc6_);
                              }
                           }
                           §§goto(addr0257);
                        }
                        §§goto(addr0251);
                     }
                     addr0257:
                     return _loc2_;
                  }
                  §§goto(addr016a);
               }
               §§goto(addr016e);
            }
            §§goto(addr022b);
         }
         while(§§pop())
         {
            _loc7_ = §§nextvalue(_loc9_,_loc10_);
            §§goto(addr0190);
            §§push(§§hasnext(_loc10_,_loc9_));
         }
         §§goto(addr022b);
      }
      
      public function positionPossible(param1:ConfigPlayfieldItemDTO) : Boolean
      {
         §§push(false);
         var _loc14_:Boolean = true;
         var _loc15_:* = §§pop();
         var _loc13_:* = 0;
         var _loc2_:Rectangle = this._gridProxy.selectedCuboid as Rectangle;
         var _loc3_:int = _loc2_.width * _loc2_.height;
         var _loc4_:Boolean = false;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(_loc14_)
         {
            if(this.getWhiteListRestrictionsForItem(param1).length > 0)
            {
               if(_loc14_ || Boolean(_loc2_))
               {
                  _loc4_ = true;
               }
            }
         }
         var _loc8_:int = _loc2_.x;
         loop0:
         while(true)
         {
            §§push(_loc8_);
            if(!(_loc15_ && Boolean(param1)))
            {
               loop1:
               while(§§pop() < _loc2_.x + _loc2_.width)
               {
                  §§push(int(_loc2_.y));
                  if(!(_loc14_ || Boolean(_loc2_)))
                  {
                     continue;
                  }
                  _loc13_ = §§pop();
                  if(_loc14_)
                  {
                     loop2:
                     while(true)
                     {
                        §§push(_loc13_);
                        if(!_loc14_)
                        {
                           break loop0;
                        }
                        if(§§pop() >= _loc2_.y + _loc2_.height)
                        {
                           if(_loc15_ && Boolean(_loc3_))
                           {
                              continue loop0;
                           }
                        }
                        else
                        {
                           §§push(this._restrictionMatrix);
                           if(_loc14_)
                           {
                              §§push(§§pop() == null);
                              if(!_loc15_)
                              {
                                 §§push(!§§pop());
                                 if(_loc14_ || Boolean(_loc3_))
                                 {
                                    var _temp_42:* = §§pop();
                                    §§push(_temp_42);
                                    if(_temp_42)
                                    {
                                       if(!(_loc15_ && Boolean(_loc3_)))
                                       {
                                          addr00c5:
                                          §§pop();
                                          if(!_loc15_)
                                          {
                                             §§push(this._restrictionMatrix);
                                             if(_loc14_)
                                             {
                                                §§push(§§pop().length > 0);
                                                if(_loc14_ || Boolean(param1))
                                                {
                                                   addr00e9:
                                                   if(§§pop())
                                                   {
                                                      if(_loc14_ || Boolean(_loc3_))
                                                      {
                                                         addr00fb:
                                                         §§push(this._restrictionMatrix);
                                                         if(!_loc15_)
                                                         {
                                                            §§push(_loc8_);
                                                            if(_loc14_ || Boolean(this))
                                                            {
                                                               if(§§pop()[§§pop()][_loc13_].blacklist)
                                                               {
                                                                  if(!(_loc15_ && Boolean(_loc2_)))
                                                                  {
                                                                     _loc6_++;
                                                                     if(!(_loc14_ || Boolean(_loc3_)))
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(this._restrictionMatrix);
                                                                        if(_loc14_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc8_);
                                                                              if(!_loc15_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop()[§§pop()][_loc13_].whitelist)
                                                                                    {
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             _loc7_++;
                                                                                             if(_loc14_ || Boolean(_loc2_))
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this._restrictionMatrix);
                                                                                                   addr017f:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc8_);
                                                                                                      addr0181:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop()[§§pop()][_loc13_].normal)
                                                                                                         {
                                                                                                            if(_loc14_ || Boolean(_loc2_))
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc5_++;
                                                                                                                  if(_loc15_)
                                                                                                                  {
                                                                                                                     break loop1;
                                                                                                                  }
                                                                                                               }
                                                                                                               addr019f:
                                                                                                            }
                                                                                                         }
                                                                                                         addr01a7:
                                                                                                         addr01d0:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc13_++;
                                                                                                            if(!_loc14_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            continue loop2;
                                                                                                         }
                                                                                                         _loc8_++;
                                                                                                         if(!_loc14_)
                                                                                                         {
                                                                                                            break loop1;
                                                                                                         }
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr017b:
                                                                                             }
                                                                                             §§goto(addr019f);
                                                                                          }
                                                                                          addr016b:
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr017b);
                                                                                 }
                                                                                 addr0155:
                                                                              }
                                                                              §§goto(addr0181);
                                                                           }
                                                                           addr014d:
                                                                        }
                                                                        §§goto(addr017f);
                                                                     }
                                                                     addr0143:
                                                                  }
                                                                  §§goto(addr016b);
                                                               }
                                                               §§goto(addr0143);
                                                            }
                                                            §§goto(addr0155);
                                                         }
                                                         §§goto(addr014d);
                                                      }
                                                      §§goto(addr016b);
                                                   }
                                                   §§goto(addr01a7);
                                                }
                                                addr01f8:
                                                var _loc9_:* = §§pop();
                                                var _loc10_:* = _loc6_ > 0;
                                                var _loc11_:* = _loc7_ == _loc3_;
                                                var _loc12_:* = _loc6_ == _loc3_;
                                                if(!_loc15_)
                                                {
                                                   §§push(_loc4_);
                                                   if(!(_loc15_ && Boolean(_loc3_)))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc15_ && Boolean(_loc2_)))
                                                         {
                                                            §§push(_loc11_);
                                                            if(!(_loc15_ && Boolean(_loc3_)))
                                                            {
                                                               §§push(§§pop());
                                                               if(!(_loc15_ && Boolean(_loc2_)))
                                                               {
                                                                  addr0262:
                                                                  var _temp_55:* = §§pop();
                                                                  §§push(_temp_55);
                                                                  §§push(_temp_55);
                                                                  if(!_loc15_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc14_ || Boolean(_loc2_))
                                                                        {
                                                                           §§pop();
                                                                           if(!_loc15_)
                                                                           {
                                                                              §§push(_loc10_);
                                                                              if(!_loc15_)
                                                                              {
                                                                                 §§push(!§§pop());
                                                                                 if(_loc14_)
                                                                                 {
                                                                                    addr0291:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!(_loc15_ && Boolean(_loc2_)))
                                                                                       {
                                                                                          §§push(true);
                                                                                          if(!_loc15_)
                                                                                          {
                                                                                             return §§pop();
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr0321:
                                                                                          §§push(false);
                                                                                          if(!(_loc15_ && Boolean(_loc2_)))
                                                                                          {
                                                                                             §§goto(addr0330);
                                                                                          }
                                                                                          addr0377:
                                                                                          §§pop();
                                                                                          if(_loc14_)
                                                                                          {
                                                                                             addr037e:
                                                                                             §§push(_loc11_);
                                                                                             if(!_loc15_)
                                                                                             {
                                                                                                addr0386:
                                                                                                §§push(!§§pop());
                                                                                                if(_loc14_ || Boolean(_loc3_))
                                                                                                {
                                                                                                   addr0395:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!(_loc15_ && Boolean(this)))
                                                                                                      {
                                                                                                         addr03a7:
                                                                                                         §§push(false);
                                                                                                         if(!(_loc15_ && Boolean(param1)))
                                                                                                         {
                                                                                                            return §§pop();
                                                                                                         }
                                                                                                         addr03ff:
                                                                                                         §§push(§§pop());
                                                                                                         if(!_loc15_)
                                                                                                         {
                                                                                                            addr0406:
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(_loc14_ || Boolean(param1))
                                                                                                               {
                                                                                                                  addr0418:
                                                                                                                  §§push(false);
                                                                                                                  if(!_loc15_)
                                                                                                                  {
                                                                                                                     §§goto(addr041f);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr0420:
                                                                                                                  §§push(true);
                                                                                                               }
                                                                                                               §§goto(addr0421);
                                                                                                            }
                                                                                                            §§goto(addr0420);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr03e2:
                                                                                                         §§push(_loc10_);
                                                                                                         if(_loc14_ || Boolean(_loc3_))
                                                                                                         {
                                                                                                            §§goto(addr03ff);
                                                                                                         }
                                                                                                      }
                                                                                                      addr041f:
                                                                                                      return §§pop();
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr03c9:
                                                                                                   §§push(§§pop());
                                                                                                   if(!_loc15_)
                                                                                                   {
                                                                                                      addr03d0:
                                                                                                      var _temp_64:* = §§pop();
                                                                                                      addr03d1:
                                                                                                      §§push(_temp_64);
                                                                                                      if(!_temp_64)
                                                                                                      {
                                                                                                         if(_loc14_)
                                                                                                         {
                                                                                                            addr03db:
                                                                                                            §§pop();
                                                                                                            if(_loc14_)
                                                                                                            {
                                                                                                               §§goto(addr03e2);
                                                                                                            }
                                                                                                            §§goto(addr0420);
                                                                                                         }
                                                                                                         §§goto(addr03ff);
                                                                                                      }
                                                                                                      §§goto(addr0406);
                                                                                                   }
                                                                                                   §§goto(addr03db);
                                                                                                }
                                                                                                §§goto(addr0420);
                                                                                             }
                                                                                             §§goto(addr03d0);
                                                                                          }
                                                                                          §§goto(addr03a7);
                                                                                       }
                                                                                       §§goto(addr03ff);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(_loc12_);
                                                                                       if(_loc14_ || Boolean(_loc2_))
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(_loc14_)
                                                                                          {
                                                                                             var _temp_66:* = §§pop();
                                                                                             §§push(_temp_66);
                                                                                             §§push(_temp_66);
                                                                                             if(!(_loc15_ && Boolean(this)))
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   if(_loc14_ || Boolean(this))
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      if(!(_loc15_ && Boolean(param1)))
                                                                                                      {
                                                                                                         §§push(_loc10_);
                                                                                                         if(!(_loc15_ && Boolean(_loc2_)))
                                                                                                         {
                                                                                                            §§goto(addr0310);
                                                                                                         }
                                                                                                         §§goto(addr0356);
                                                                                                      }
                                                                                                      §§goto(addr037e);
                                                                                                   }
                                                                                                   §§goto(addr0377);
                                                                                                }
                                                                                                §§goto(addr0317);
                                                                                             }
                                                                                             §§goto(addr03d1);
                                                                                          }
                                                                                          §§goto(addr03c9);
                                                                                       }
                                                                                       §§goto(addr0347);
                                                                                    }
                                                                                 }
                                                                                 addr0310:
                                                                                 §§push(§§pop());
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    addr0317:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          §§goto(addr0321);
                                                                                       }
                                                                                       §§goto(addr03e2);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(_loc9_);
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          addr0347:
                                                                                          §§push(§§pop());
                                                                                          if(!(_loc15_ && Boolean(_loc3_)))
                                                                                          {
                                                                                             addr0356:
                                                                                             var _temp_72:* = §§pop();
                                                                                             §§push(_temp_72);
                                                                                             §§push(_temp_72);
                                                                                             if(!(_loc15_ && Boolean(_loc2_)))
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   if(!(_loc15_ && Boolean(param1)))
                                                                                                   {
                                                                                                      §§goto(addr0377);
                                                                                                   }
                                                                                                   §§goto(addr03ff);
                                                                                                }
                                                                                                §§goto(addr0395);
                                                                                             }
                                                                                             §§goto(addr03d1);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr03d0);
                                                                                 }
                                                                                 §§goto(addr0421);
                                                                              }
                                                                              §§goto(addr0386);
                                                                           }
                                                                           §§goto(addr0418);
                                                                        }
                                                                        addr0330:
                                                                        return §§pop();
                                                                     }
                                                                     §§goto(addr0291);
                                                                  }
                                                                  §§goto(addr03d1);
                                                               }
                                                               §§goto(addr0347);
                                                            }
                                                            addr0421:
                                                            return §§pop();
                                                         }
                                                         §§goto(addr0420);
                                                      }
                                                      else
                                                      {
                                                         §§push(_loc12_);
                                                         if(_loc14_)
                                                         {
                                                            §§goto(addr03c9);
                                                         }
                                                      }
                                                      §§goto(addr0406);
                                                   }
                                                   §§goto(addr0262);
                                                }
                                                §§goto(addr037e);
                                             }
                                             §§goto(addr017f);
                                          }
                                          §§goto(addr00fb);
                                       }
                                       §§goto(addr01f8);
                                    }
                                    §§goto(addr00e9);
                                 }
                                 §§goto(addr00c5);
                              }
                              §§goto(addr00e9);
                           }
                           §§goto(addr014d);
                        }
                        §§goto(addr01d0);
                     }
                  }
                  §§goto(addr0143);
               }
               §§push(_loc7_);
            }
            break;
         }
         §§goto(addr01f8);
         §§push(§§pop() > 0);
      }
      
      public function get restrictionGridVisibility() : Boolean
      {
         return this._restrictionGridVisibility;
      }
      
      public function set restrictionGridVisibility(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._restrictionGridVisibility = param1;
            if(_loc2_ || _loc2_)
            {
               addr003f:
               sendNotification(ApplicationNotificationConstants.RESTRICTION_GRID_VISIBILITY_CHANGED);
            }
            return;
         }
         §§goto(addr003f);
      }
      
      public function get restrictionGridSource() : Vector.<ConfigGroundRestrictionDTO>
      {
         return this._restrictionGridSource;
      }
      
      public function set restrictionGridSource(param1:Vector.<ConfigGroundRestrictionDTO>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._restrictionGridSource = param1;
            if(_loc2_)
            {
               §§goto(addr0033);
            }
            §§goto(addr003d);
         }
         addr0033:
         this._ignoreStreets = false;
         if(_loc2_)
         {
            addr003d:
            sendNotification(ApplicationNotificationConstants.RESTRICTION_GRID_NEW_SOURCE);
         }
      }
      
      public function setRestrictionGridSource(param1:Vector.<ConfigGroundRestrictionDTO>, param2:Boolean = false) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            this._restrictionGridSource = param1;
            if(_loc3_)
            {
               this._ignoreStreets = param2;
               if(_loc3_)
               {
                  sendNotification(ApplicationNotificationConstants.RESTRICTION_GRID_NEW_SOURCE);
               }
            }
         }
      }
      
      public function get restrictionMatrix() : Array
      {
         return this._restrictionMatrix;
      }
      
      public function set restrictionMatrix(param1:Array) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._restrictionMatrix = param1;
         }
      }
      
      public function get restrictionItem() : IGameObjectVo
      {
         return this._restrictionItem;
      }
      
      public function set restrictionItem(param1:IGameObjectVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._restrictionItem = param1;
         }
      }
      
      public function get ignoreStreets() : Boolean
      {
         return this._ignoreStreets;
      }
   }
}

