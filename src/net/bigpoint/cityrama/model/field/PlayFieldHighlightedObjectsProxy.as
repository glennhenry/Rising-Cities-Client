package net.bigpoint.cityrama.model.field
{
   import flash.geom.Rectangle;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ResidentialFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ShopFieldObjectVo;
   import net.bigpoint.cityrama.model.infrastructure.SecurityMatrixProxy;
   import net.bigpoint.cityrama.model.shop.NeedVo;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.HighlightManager;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class PlayFieldHighlightedObjectsProxy extends Proxy
   {
      
      public static const NAME:String = "PlayFieldHighlightedObjectsProxy";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         NAME = "PlayFieldHighlightedObjectsProxy";
      }
      
      private var _highlitedShops:Vector.<ShopFieldObject>;
      
      private var _highlitedBuildings:Vector.<BillboardObject>;
      
      private var _highlitedBuildingsIDs:Vector.<Number>;
      
      private var _playFieldObjectProxy:PlayfieldObjectsProxy;
      
      private var _objectVothatMoves:BillboardObjectVo;
      
      private var _shopLocaleId:String;
      
      private var _buffRect:Rectangle;
      
      private var _testRect:Rectangle;
      
      private var _securityMatrixProxy:SecurityMatrixProxy;
      
      public function PlayFieldHighlightedObjectsProxy(param1:String = null, param2:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            this._buffRect = new Rectangle();
            if(_loc3_)
            {
               this._testRect = new Rectangle();
               if(_loc3_ || Boolean(param2))
               {
                  addr0051:
                  super(param1,param2);
               }
            }
            return;
         }
         §§goto(addr0051);
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this.init();
         }
      }
      
      private function init() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            this._playFieldObjectProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
            if(!(_loc2_ && _loc1_))
            {
               this._securityMatrixProxy = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
               if(_loc1_)
               {
                  this._highlitedBuildings = new Vector.<BillboardObject>();
                  §§goto(addr005b);
               }
               §§goto(addr0091);
            }
            addr005b:
            if(!_loc2_)
            {
               this._highlitedBuildingsIDs = new Vector.<Number>();
               if(_loc1_ || _loc1_)
               {
                  addr0091:
                  this._highlitedShops = new Vector.<ShopFieldObject>();
               }
            }
            return;
         }
         §§goto(addr0091);
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this._playFieldObjectProxy = null;
            if(!_loc1_)
            {
               addr0020:
               this._highlitedBuildings = null;
               if(_loc2_)
               {
                  this._highlitedBuildingsIDs = null;
                  if(_loc2_ || Boolean(this))
                  {
                     addr0050:
                     this._objectVothatMoves = null;
                     if(_loc2_ || _loc2_)
                     {
                        this._shopLocaleId = "";
                        if(!_loc1_)
                        {
                           addr006d:
                           this._highlitedShops = null;
                        }
                        §§goto(addr0072);
                     }
                     §§goto(addr006d);
                  }
                  addr0072:
                  return;
               }
               §§goto(addr006d);
            }
            §§goto(addr0050);
         }
         §§goto(addr0020);
      }
      
      private function filterDoubles(param1:Vector.<ResidentialFieldObject>) : Vector.<ResidentialFieldObject>
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc3_:ResidentialFieldObject = null;
         var _loc4_:Boolean = false;
         var _loc5_:ResidentialFieldObject = null;
         var _loc2_:Vector.<ResidentialFieldObject> = new Vector.<ResidentialFieldObject>();
         for each(_loc3_ in param1)
         {
            if(_loc10_)
            {
               _loc4_ = false;
            }
            for each(_loc5_ in _loc2_)
            {
               if(!_loc11_)
               {
                  if(_loc3_ != _loc5_)
                  {
                     continue;
                  }
                  if(_loc11_)
                  {
                     break;
                  }
               }
               _loc4_ = true;
               break;
            }
            if(_loc10_ || Boolean(this))
            {
               if(_loc4_)
               {
                  continue;
               }
               if(!_loc10_)
               {
                  continue;
               }
            }
            _loc2_.push(_loc3_);
         }
         return _loc2_;
      }
      
      public function findAndHighlightBuildings(param1:Rectangle) : void
      {
         var _temp_1:* = true;
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = _temp_1;
         var _loc5_:BillboardObject = null;
         var _loc7_:ResidentialFieldObject = null;
         var _loc8_:BillboardObject = null;
         var _loc9_:* = NaN;
         var _loc10_:NeedVo = null;
         if(_loc16_)
         {
            §§push(this._playFieldObjectProxy);
            if(_loc16_)
            {
               if(!§§pop())
               {
                  if(!(_loc15_ && Boolean(param1)))
                  {
                     this.init();
                  }
               }
               addr0057:
               §§push(this._playFieldObjectProxy);
            }
            var _loc2_:Vector.<ResidentialFieldObject> = §§pop().getResidentialsByRect(param1);
            _loc2_ = this.filterDoubles(_loc2_);
            if(!(_loc15_ && Boolean(_loc2_)))
            {
               if(!_loc2_)
               {
                  if(!_loc15_)
                  {
                     return;
                  }
               }
            }
            var _loc3_:Vector.<BillboardObject> = new Vector.<BillboardObject>();
            var _loc4_:Vector.<BillboardObject> = new Vector.<BillboardObject>();
            var _loc6_:* = false;
            var _loc11_:* = 0;
            var _loc12_:* = this._highlitedBuildings;
            loop0:
            while(true)
            {
               §§push(§§hasnext(_loc12_,_loc11_));
               if(_loc15_ && Boolean(_loc3_))
               {
                  break;
               }
               if(§§pop())
               {
                  _loc5_ = §§nextvalue(_loc11_,_loc12_);
                  if(_loc16_ || Boolean(_loc3_))
                  {
                     _loc6_ = false;
                  }
                  for each(_loc8_ in _loc2_)
                  {
                     if(!(_loc16_ || Boolean(_loc3_)))
                     {
                        break;
                     }
                     if(_loc5_.billboardObjectVo.buildingDTO.id == _loc8_.billboardObjectVo.buildingDTO.id)
                     {
                        if(_loc16_ || Boolean(this))
                        {
                           _loc6_ = true;
                        }
                        break;
                     }
                  }
                  if(_loc16_)
                  {
                     if(_loc6_)
                     {
                        continue;
                     }
                     if(_loc15_ && Boolean(_loc3_))
                     {
                        continue;
                     }
                  }
                  _loc3_.push(_loc5_);
                  continue;
               }
               if(!_loc15_)
               {
                  if(!(_loc15_ && Boolean(_loc2_)))
                  {
                     if(!_loc15_)
                     {
                        if(_loc3_.length > 0)
                        {
                           if(!_loc15_)
                           {
                              this.resetHighlight(_loc3_);
                              if(_loc16_)
                              {
                                 addr019a:
                                 §§push(0);
                                 if(_loc16_ || Boolean(_loc3_))
                                 {
                                    _loc11_ = §§pop();
                                    if(_loc16_ || Boolean(this))
                                    {
                                       _loc12_ = _loc2_;
                                       while(true)
                                       {
                                          §§push(§§hasnext(_loc12_,_loc11_));
                                          if(_loc16_ || Boolean(_loc2_))
                                          {
                                             break loop0;
                                          }
                                          addr03b1:
                                          loop7:
                                          while(§§pop())
                                          {
                                             _loc7_ = §§nextvalue(_loc11_,_loc12_);
                                             if(_loc16_ || Boolean(_loc2_))
                                             {
                                                this._highlitedBuildings.push(_loc7_);
                                                if(!_loc15_)
                                                {
                                                   this._highlitedBuildingsIDs.push(_loc7_.residentialFieldObjectVo.buildingDTO.id);
                                                   if(!_loc15_)
                                                   {
                                                      addr03a1:
                                                      _loc7_.invalidateHighlightManager(HighlightManager.INMOVE_RANGE_TINT,true);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(§§hasnext(_loc12_,_loc11_));
                                                   continue loop7;
                                                }
                                                break;
                                                addr03ae:
                                             }
                                             §§goto(addr03a1);
                                          }
                                          §§goto(addr03b7);
                                       }
                                       addr02ff:
                                    }
                                    addr0332:
                                    if(!_loc15_)
                                    {
                                       addr033c:
                                       _loc11_ = 0;
                                       addr033a:
                                       if(!(_loc15_ && Boolean(this)))
                                       {
                                          addr034c:
                                          _loc12_ = _loc4_;
                                          §§goto(addr03ae);
                                       }
                                    }
                                    §§goto(addr03b7);
                                 }
                                 §§goto(addr033c);
                              }
                              §§goto(addr03b7);
                           }
                           §§goto(addr033a);
                        }
                        §§goto(addr019a);
                     }
                  }
               }
               §§goto(addr03b7);
            }
            while(true)
            {
               if(!§§pop())
               {
                  if(_loc16_ || Boolean(_loc2_))
                  {
                     if(!(_loc15_ && Boolean(this)))
                     {
                        §§goto(addr0332);
                     }
                     §§goto(addr034c);
                  }
                  addr03b7:
                  return;
               }
               _loc5_ = §§nextvalue(_loc11_,_loc12_);
               if(_loc16_ || Boolean(param1))
               {
                  §§push(false);
                  if(!(_loc15_ && Boolean(_loc3_)))
                  {
                     _loc6_ = §§pop();
                     if(!_loc15_)
                     {
                        addr01fc:
                        §§push(0);
                        if(!(_loc15_ && Boolean(param1)))
                        {
                           var _loc13_:* = §§pop();
                           if(!(_loc15_ && Boolean(this)))
                           {
                              var _loc14_:* = this._highlitedBuildingsIDs;
                              if(!_loc15_)
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc14_,_loc13_));
                                    if(_loc15_ && Boolean(_loc2_))
                                    {
                                       break;
                                    }
                                    if(!§§pop())
                                    {
                                       if(!_loc15_)
                                       {
                                          addr0279:
                                          if(_loc16_ || Boolean(param1))
                                          {
                                             addr0289:
                                             if(_loc16_)
                                             {
                                                addr0291:
                                                addr0293:
                                                if(!_loc6_)
                                                {
                                                   if(!(_loc15_ && Boolean(param1)))
                                                   {
                                                      if((_loc5_ as ResidentialFieldObject).residentialFieldObjectVo.residentialNeeds)
                                                      {
                                                         addr02b7:
                                                         _loc13_ = 0;
                                                         addr02b9:
                                                         _loc14_ = (_loc5_ as ResidentialFieldObject).residentialFieldObjectVo.residentialNeeds;
                                                         while(true)
                                                         {
                                                            §§push(§§hasnext(_loc14_,_loc13_));
                                                            break loop5;
                                                         }
                                                         addr02b5:
                                                         addr02fb:
                                                         addr02f4:
                                                      }
                                                      §§goto(addr02ff);
                                                   }
                                                   §§goto(addr02b5);
                                                }
                                                §§goto(addr02ff);
                                             }
                                             §§goto(addr02b5);
                                          }
                                          §§goto(addr02b9);
                                       }
                                       §§goto(addr02fb);
                                    }
                                    else
                                    {
                                       §§push(§§nextvalue(_loc13_,_loc14_));
                                       if(!_loc15_)
                                       {
                                          _loc9_ = §§pop();
                                          if(!_loc15_)
                                          {
                                             addr024b:
                                             if(_loc5_.billboardObjectVo.buildingDTO.id != _loc9_)
                                             {
                                                continue;
                                             }
                                             if(!_loc15_)
                                             {
                                                addr0257:
                                                _loc6_ = true;
                                             }
                                          }
                                          §§goto(addr0279);
                                       }
                                       §§goto(addr024b);
                                    }
                                 }
                                 while(§§pop())
                                 {
                                    _loc10_ = §§nextvalue(_loc13_,_loc14_);
                                    if(_loc10_.shopLocaleId == this._shopLocaleId)
                                    {
                                       if(!_loc15_)
                                       {
                                          _loc4_.push(_loc5_);
                                       }
                                       break;
                                    }
                                    §§goto(addr02f4);
                                 }
                                 §§goto(addr02fb);
                              }
                              §§goto(addr0257);
                           }
                           §§goto(addr0289);
                        }
                        §§goto(addr02b7);
                     }
                     §§goto(addr0291);
                  }
                  §§goto(addr0293);
               }
               §§goto(addr01fc);
            }
            §§goto(addr03b1);
         }
         §§goto(addr0057);
      }
      
      public function findAndHighlightEmergency(param1:Rectangle) : void
      {
         §§push(false);
         var _loc12_:Boolean = true;
         var _loc13_:* = §§pop();
         var _loc4_:BillboardObject = null;
         var _loc5_:Boolean = false;
         var _loc6_:BillboardObject = null;
         var _loc7_:BillboardObject = null;
         if(!_loc13_)
         {
            §§push(this._playFieldObjectProxy);
            if(_loc12_)
            {
               §§push(!§§pop());
               if(!(_loc13_ && _loc2_))
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  if(!_temp_2)
                  {
                     if(_loc12_)
                     {
                        addr0053:
                        §§pop();
                        if(!(_loc13_ && _loc3_))
                        {
                           addr0067:
                           if(!this._securityMatrixProxy)
                           {
                              if(_loc12_)
                              {
                                 addr0071:
                                 this.init();
                              }
                           }
                        }
                        addr007a:
                        var _loc2_:Vector.<BillboardObject> = this._playFieldObjectProxy.getEmergencyableBuildingsByRect(param1);
                        var _loc3_:Vector.<BillboardObject> = new Vector.<BillboardObject>();
                        if(_loc12_)
                        {
                           §§push(_loc2_ == null);
                           if(_loc12_)
                           {
                              var _temp_4:* = §§pop();
                              §§push(_temp_4);
                              if(!_temp_4)
                              {
                                 if(_loc12_ || Boolean(_loc2_))
                                 {
                                    addr00b3:
                                    §§pop();
                                    if(_loc12_ || Boolean(this))
                                    {
                                       addr00c8:
                                       if(_loc2_.length == 0)
                                       {
                                          if(_loc12_ || Boolean(_loc2_))
                                          {
                                             addr00da:
                                             this.resetHighlight();
                                          }
                                       }
                                       addr00df:
                                       var _loc8_:int = 0;
                                       var _loc9_:* = this._highlitedBuildings;
                                       loop0:
                                       while(true)
                                       {
                                          §§push(§§hasnext(_loc9_,_loc8_));
                                          if(_loc13_ && Boolean(this))
                                          {
                                             break;
                                          }
                                          if(§§pop())
                                          {
                                             _loc4_ = §§nextvalue(_loc8_,_loc9_);
                                             if(!(_loc13_ && Boolean(_loc3_)))
                                             {
                                                _loc5_ = false;
                                             }
                                             for each(_loc7_ in _loc2_)
                                             {
                                                if(_loc13_ && Boolean(param1))
                                                {
                                                   break;
                                                }
                                                if(_loc4_.billboardObjectVo.buildingDTO.id == _loc7_.billboardObjectVo.buildingDTO.id)
                                                {
                                                   if(_loc12_)
                                                   {
                                                      _loc5_ = true;
                                                   }
                                                   break;
                                                }
                                             }
                                             if(!(_loc13_ && Boolean(param1)))
                                             {
                                                if(_loc5_)
                                                {
                                                   continue;
                                                }
                                                if(!_loc12_)
                                                {
                                                   continue;
                                                }
                                             }
                                             _loc3_.push(_loc4_);
                                             continue;
                                          }
                                          if(_loc12_)
                                          {
                                             if(!_loc13_)
                                             {
                                                if(_loc12_ || Boolean(_loc2_))
                                                {
                                                   if(_loc3_.length > 0)
                                                   {
                                                      if(_loc12_)
                                                      {
                                                         this.resetHighlight(_loc3_);
                                                         if(!_loc13_)
                                                         {
                                                            addr01d5:
                                                            _loc8_ = 0;
                                                            if(_loc12_ || Boolean(_loc2_))
                                                            {
                                                               addr01e7:
                                                               _loc9_ = _loc2_;
                                                               while(true)
                                                               {
                                                                  §§push(§§hasnext(_loc9_,_loc8_));
                                                                  break loop0;
                                                               }
                                                               addr0244:
                                                               addr023d:
                                                            }
                                                         }
                                                         §§goto(addr0248);
                                                      }
                                                   }
                                                   §§goto(addr01d5);
                                                }
                                                addr0248:
                                                return;
                                             }
                                             §§goto(addr01e7);
                                          }
                                          §§goto(addr0244);
                                       }
                                       while(§§pop())
                                       {
                                          _loc6_ = §§nextvalue(_loc8_,_loc9_);
                                          if(_loc12_)
                                          {
                                             this._highlitedBuildings.push(_loc6_);
                                             if(_loc12_)
                                             {
                                                this._highlitedBuildingsIDs.push(_loc6_.billboardObjectVo.buildingDTO.id);
                                                if(_loc12_)
                                                {
                                                   _loc6_.invalidateHighlightManager(HighlightManager.INMOVE_RANGE_TINT,true);
                                                }
                                             }
                                          }
                                          §§goto(addr023d);
                                       }
                                       §§goto(addr0244);
                                    }
                                    §§goto(addr00da);
                                 }
                              }
                              §§goto(addr00c8);
                           }
                           §§goto(addr00b3);
                        }
                        §§goto(addr00df);
                     }
                  }
                  §§goto(addr0067);
               }
               §§goto(addr0053);
            }
            §§goto(addr007a);
         }
         §§goto(addr0071);
      }
      
      public function resetHighlight(param1:Vector.<BillboardObject> = null) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:BillboardObject = null;
         var _loc3_:BillboardObject = null;
         if(!_loc6_)
         {
            if(param1)
            {
               addr0028:
               var _loc4_:int = 0;
               var _loc5_:* = param1;
               loop1:
               while(true)
               {
                  §§push(§§hasnext(_loc5_,_loc4_));
                  if(_loc6_ && Boolean(param1))
                  {
                     break;
                  }
                  if(!§§pop())
                  {
                     if(_loc7_ || Boolean(_loc3_))
                     {
                        if(_loc7_)
                        {
                           if(!(_loc7_ || Boolean(_loc2_)))
                           {
                              addr0137:
                              this._highlitedBuildings = new Vector.<BillboardObject>();
                              if(!(_loc6_ && Boolean(_loc3_)))
                              {
                                 this._highlitedBuildingsIDs = new Vector.<Number>();
                              }
                           }
                        }
                        else
                        {
                           addr00e5:
                           _loc5_ = this._highlitedBuildings;
                           while(true)
                           {
                              §§push(§§hasnext(_loc5_,_loc4_));
                              break loop1;
                           }
                           addr011c:
                           if(!(_loc6_ && Boolean(this)))
                           {
                              §§goto(addr0137);
                           }
                           addr011a:
                           addr0113:
                        }
                        return;
                     }
                     §§goto(addr011a);
                  }
                  else
                  {
                     _loc2_ = §§nextvalue(_loc4_,_loc5_);
                     if(!_loc6_)
                     {
                        _loc2_.invalidateHighlightManager(HighlightManager.INMOVE_RANGE_TINT,false);
                        if(!(_loc6_ && Boolean(param1)))
                        {
                           addr005d:
                           this._highlitedBuildingsIDs.splice(this._highlitedBuildingsIDs.indexOf(_loc2_.billboardObjectVo.buildingDTO.id),1);
                           if(!_loc7_)
                           {
                              continue;
                           }
                        }
                        this._highlitedBuildings.splice(this._highlitedBuildings.indexOf(_loc2_),1);
                        continue;
                     }
                     §§goto(addr005d);
                  }
               }
               while(§§pop())
               {
                  _loc3_ = §§nextvalue(_loc4_,_loc5_);
                  if(!(_loc6_ && Boolean(this)))
                  {
                     _loc3_.invalidateHighlightManager(HighlightManager.INMOVE_RANGE_TINT,false);
                  }
                  §§goto(addr0113);
               }
               §§goto(addr011a);
            }
            else
            {
               _loc4_ = 0;
               if(_loc7_)
               {
                  §§goto(addr00e5);
               }
            }
            §§goto(addr011c);
         }
         §§goto(addr0028);
      }
      
      public function get objectVothatMoves() : BillboardObjectVo
      {
         return this._objectVothatMoves;
      }
      
      public function set objectVothatMoves(param1:BillboardObjectVo) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:ShopFieldObjectVo = null;
         if(!(_loc3_ && Boolean(param1)))
         {
            this._objectVothatMoves = param1;
            if(_loc4_ || Boolean(param1))
            {
               §§goto(addr0053);
            }
            §§goto(addr005c);
         }
         addr0053:
         if(param1 is ShopFieldObjectVo)
         {
            addr005c:
            _loc2_ = param1 as ShopFieldObjectVo;
            if(_loc4_ || Boolean(_loc2_))
            {
               this._shopLocaleId = _loc2_.configPlayfieldItemVo.localeId;
            }
         }
      }
      
      public function findAndHighlightShops(param1:Cuboid) : void
      {
         var _temp_1:* = true;
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = _temp_1;
         var _loc4_:ShopFieldObject = null;
         var _loc5_:* = false;
         var _loc6_:String = null;
         var _loc7_:NeedVo = null;
         var _loc8_:Rectangle = null;
         var _loc9_:Rectangle = null;
         var _loc10_:* = null;
         if(_loc16_)
         {
            if(!this._playFieldObjectProxy)
            {
               if(_loc16_)
               {
                  addr004b:
                  this.init();
               }
            }
            var _loc2_:ResidentialFieldObjectVo = this.objectVothatMoves as ResidentialFieldObjectVo;
            var _loc3_:Vector.<ShopFieldObject> = this._playFieldObjectProxy.needShopList;
            if(_loc16_)
            {
               this._testRect.x = param1.left;
               if(!(_loc15_ && Boolean(_loc3_)))
               {
                  §§goto(addr0084);
               }
               §§goto(addr00aa);
            }
            addr0084:
            this._testRect.y = param1.top;
            if(!_loc15_)
            {
               this._testRect.width = param1.width;
               if(!(_loc15_ && Boolean(this)))
               {
                  addr00aa:
                  this._testRect.height = param1.height;
               }
            }
            var _loc11_:int = 0;
            var _loc12_:* = _loc3_;
            while(true)
            {
               for each(_loc4_ in _loc12_)
               {
                  if(_loc16_)
                  {
                     §§push(false);
                     if(!_loc15_)
                     {
                        _loc5_ = §§pop();
                        if(!_loc15_)
                        {
                           §§push(_loc4_.shopFieldObjectVo);
                           if(!_loc15_)
                           {
                              _loc6_ = §§pop().configPlayfieldItemVo.localeId;
                              if(!_loc15_)
                              {
                                 addr00f9:
                                 var _loc13_:int = 0;
                                 if(!(_loc15_ && Boolean(_loc2_)))
                                 {
                                    for each(_loc7_ in _loc2_.residentialNeeds)
                                    {
                                       §§push(_loc7_.shopLocaleId);
                                       if(_loc16_)
                                       {
                                          §§push(§§pop());
                                          if(_loc16_ || Boolean(_loc3_))
                                          {
                                             _loc10_ = §§pop();
                                             if(!(_loc16_ || Boolean(this)))
                                             {
                                                continue;
                                             }
                                             §§push(_loc6_);
                                          }
                                       }
                                       if(§§pop() == _loc10_)
                                       {
                                          if(_loc16_)
                                          {
                                             _loc5_ = true;
                                          }
                                       }
                                    }
                                 }
                                 if(_loc15_ && Boolean(param1))
                                 {
                                    continue;
                                 }
                              }
                              addr0176:
                              addr0174:
                              if(!_loc5_)
                              {
                                 continue;
                              }
                              §§push(_loc4_.shopFieldObjectVo);
                           }
                           _loc8_ = §§pop().satisfyRange;
                           §§push(_loc8_.width == 0);
                           if(!_loc15_)
                           {
                              var _temp_10:* = §§pop();
                              §§push(_temp_10);
                              if(!_temp_10)
                              {
                                 if(_loc16_ || Boolean(this))
                                 {
                                    addr01b7:
                                    §§pop();
                                    if(!_loc16_)
                                    {
                                       break;
                                    }
                                    §§push(_loc8_.height == 0);
                                 }
                              }
                              if(§§pop())
                              {
                                 if(!(_loc15_ && Boolean(_loc3_)))
                                 {
                                    break;
                                 }
                              }
                              _loc8_.x = _loc4_.shopFieldObjectVo.matrixCoordinates.left - (_loc8_.width - _loc4_.shopFieldObjectVo.configPlayfieldItemVo.sizeX) / 2;
                              if(!(_loc15_ && Boolean(param1)))
                              {
                                 _loc8_.y = _loc4_.shopFieldObjectVo.matrixCoordinates.top - (_loc8_.height - _loc4_.shopFieldObjectVo.configPlayfieldItemVo.sizeY) / 2;
                                 if(!_loc15_)
                                 {
                                    this._buffRect.x = _loc8_.x;
                                    if(!_loc15_)
                                    {
                                       addr024e:
                                       this._buffRect.y = _loc8_.y;
                                       if(!_loc15_)
                                       {
                                          this._buffRect.height = _loc8_.height;
                                          if(_loc16_ || Boolean(param1))
                                          {
                                             addr0276:
                                             this._buffRect.width = _loc8_.width;
                                          }
                                          addr0280:
                                          _loc9_ = this._testRect.intersection(this._buffRect);
                                          §§push(_loc9_.width > 0);
                                          if(!(_loc15_ && Boolean(_loc3_)))
                                          {
                                             var _temp_17:* = §§pop();
                                             §§push(_temp_17);
                                             if(_temp_17)
                                             {
                                                if(!_loc15_)
                                                {
                                                   §§pop();
                                                   if(!_loc15_)
                                                   {
                                                      addr02bf:
                                                      if(_loc9_.height <= 0)
                                                      {
                                                         _loc4_.invalidateHighlightManager(HighlightManager.INMOVE_RANGE_TINT,false);
                                                         continue;
                                                      }
                                                      if(!(_loc15_ && Boolean(_loc3_)))
                                                      {
                                                         if(this._highlitedShops.indexOf(_loc4_) == -1)
                                                         {
                                                            if(_loc15_ && Boolean(_loc3_))
                                                            {
                                                               continue;
                                                            }
                                                            this._highlitedShops.push(_loc4_);
                                                            if(!_loc16_)
                                                            {
                                                               continue;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   _loc4_.invalidateHighlightManager(HighlightManager.INMOVE_RANGE_TINT,true);
                                                   if(_loc16_ || Boolean(this))
                                                   {
                                                   }
                                                   continue;
                                                }
                                             }
                                          }
                                          §§goto(addr02bf);
                                       }
                                       §§goto(addr0276);
                                    }
                                    §§goto(addr0280);
                                 }
                                 §§goto(addr0276);
                              }
                              §§goto(addr024e);
                           }
                           §§goto(addr01b7);
                        }
                        §§goto(addr00f9);
                     }
                     §§goto(addr0176);
                  }
                  §§goto(addr0174);
               }
               return;
            }
            return;
         }
         §§goto(addr004b);
      }
      
      public function resetHighlightedShops() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:ShopFieldObject = null;
         for each(_loc1_ in this._highlitedShops)
         {
            if(!(_loc5_ && Boolean(_loc1_)))
            {
               _loc1_.invalidateHighlightManager(HighlightManager.INMOVE_RANGE_TINT,false);
            }
         }
         if(!_loc5_)
         {
            this._highlitedShops = new Vector.<ShopFieldObject>();
         }
      }
   }
}

