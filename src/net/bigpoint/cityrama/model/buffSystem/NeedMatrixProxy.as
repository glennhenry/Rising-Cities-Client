package net.bigpoint.cityrama.model.buffSystem
{
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import net.bigpoint.cityrama.model.common.ArrayMatrix;
   import net.bigpoint.cityrama.model.common.ArrayMatrix3D;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.vo.ResidentialFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ShopFieldObjectVo;
   import net.bigpoint.cityrama.model.shop.NeedVo;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class NeedMatrixProxy extends Proxy
   {
      
      public static const NAME:String = "NeedMatrixProxy";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc2_))
      {
         NAME = "NeedMatrixProxy";
      }
      
      private var _playfieldProxy:PlayfieldProxy;
      
      private var _buffMatrix:ArrayMatrix3D;
      
      private var _residentialMatrix:ArrayMatrix;
      
      public function NeedMatrixProxy(param1:String = null, param2:Object = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            this._playfieldProxy = PlayfieldProxy(facade.retrieveProxy(PlayfieldProxy.NAME));
            if(!(_loc2_ && Boolean(this)))
            {
               addr0049:
               this.reset();
            }
            return;
         }
         §§goto(addr0049);
      }
      
      public function removeShop(param1:ShopFieldObject) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this.removeNeedProviderByRect(param1.shopFieldObjectVo.buildingDTO.id,this.calculateSatisfyRectByShop(param1.shopFieldObjectVo));
         }
      }
      
      public function addShop(param1:ShopFieldObject) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this.addNeedProvider(param1.shopFieldObjectVo,this.calculateSatisfyRectByShop(param1.shopFieldObjectVo));
         }
      }
      
      private function addNeedProvider(param1:ShopFieldObjectVo, param2:Rectangle) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(param1)))
         {
            this._buffMatrix.stackObjectByRect(param1,param2);
            if(!(_loc3_ && Boolean(this)))
            {
               addr0045:
               this.updateResidentialNeeds(param2);
            }
            return;
         }
         §§goto(addr0045);
      }
      
      private function removeNeedProviderByRect(param1:Number, param2:Rectangle) : void
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:Array = null;
         var _loc7_:ShopFieldObjectVo = null;
         var _loc3_:int = param2.x;
         loop0:
         while(true)
         {
            §§push(_loc3_);
            loop1:
            while(true)
            {
               if(§§pop() >= param2.x + param2.width)
               {
                  if(_loc11_ && Boolean(this))
                  {
                     break;
                  }
               }
               else
               {
                  §§push(int(param2.y));
                  if(_loc11_ && Boolean(this))
                  {
                     continue;
                  }
                  _loc4_ = §§pop();
                  if(!(_loc10_ || Boolean(this)))
                  {
                     break;
                  }
                  loop2:
                  while(true)
                  {
                     §§push(_loc4_);
                     if(!(_loc11_ && Boolean(param2)))
                     {
                        while(§§pop() < param2.y + param2.height)
                        {
                           §§push(0);
                           if(!_loc10_)
                           {
                              continue;
                           }
                           _loc5_ = §§pop();
                           if(!_loc10_)
                           {
                              continue loop0;
                           }
                           _loc6_ = this._buffMatrix.getColBy2DCoordinates(_loc3_,_loc4_);
                           §§push(_loc6_ == null);
                           if(_loc10_ || Boolean(this))
                           {
                              §§push(!§§pop());
                              if(_loc10_)
                              {
                                 var _temp_7:* = §§pop();
                                 §§push(_temp_7);
                                 if(_temp_7)
                                 {
                                    if(!(_loc11_ && Boolean(param1)))
                                    {
                                       addr00a1:
                                       §§pop();
                                       if(!_loc10_)
                                       {
                                          continue loop2;
                                       }
                                       §§push(_loc6_.length > 0);
                                    }
                                 }
                                 addr00af:
                                 if(§§pop())
                                 {
                                    if(_loc11_)
                                    {
                                       continue loop2;
                                    }
                                    for each(_loc7_ in _loc6_)
                                    {
                                       §§push(_loc7_ == null);
                                       if(_loc10_)
                                       {
                                          §§push(!§§pop());
                                          if(_loc10_ || Boolean(param2))
                                          {
                                             var _temp_11:* = §§pop();
                                             §§push(_temp_11);
                                             if(_temp_11)
                                             {
                                                if(!_loc11_)
                                                {
                                                   addr0101:
                                                   §§pop();
                                                   if(_loc11_ && Boolean(this))
                                                   {
                                                      break;
                                                   }
                                                   §§push(_loc7_.buildingDTO.id == param1);
                                                }
                                             }
                                             if(§§pop())
                                             {
                                                if(!(_loc11_ && Boolean(param1)))
                                                {
                                                   this._buffMatrix.setObject(null,_loc3_,_loc4_,_loc5_);
                                                   if(!(_loc11_ && Boolean(this)))
                                                   {
                                                      break;
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                _loc5_++;
                                             }
                                             continue;
                                          }
                                       }
                                       §§goto(addr0101);
                                    }
                                 }
                                 _loc4_++;
                                 continue loop2;
                              }
                              §§goto(addr00a1);
                           }
                           §§goto(addr00af);
                        }
                        break;
                     }
                     continue loop1;
                  }
                  if(_loc10_)
                  {
                     _loc3_++;
                     if(!_loc10_)
                     {
                        break;
                     }
                     continue loop0;
                  }
               }
               this.updateResidentialNeeds(param2);
               break;
            }
            break;
         }
      }
      
      private function calculateSatisfyRect(param1:Rectangle, param2:Point, param3:Point) : Rectangle
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:Rectangle = null;
         var _temp_2:* = param1.clone();
         _loc4_ = param1.clone();
         _loc4_.x = param2.x - (_loc4_.width - param3.x) / 2;
         if(!_loc5_)
         {
            _loc4_.y = param2.y - (_loc4_.height - param3.y) / 2;
         }
         return _loc4_;
      }
      
      private function calculateSatisfyRectByShop(param1:ShopFieldObjectVo) : Rectangle
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Rectangle = null;
         _loc2_ = param1.satisfyRange;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            _loc2_.x = param1.matrixCoordinates.x - (_loc2_.width - param1.configPlayfieldItemVo.sizeX) / 2;
            if(_loc4_ || Boolean(_loc2_))
            {
               addr006b:
               _loc2_.y = param1.matrixCoordinates.y - (_loc2_.height - param1.configPlayfieldItemVo.sizeY) / 2;
            }
            return _loc2_;
         }
         §§goto(addr006b);
      }
      
      private function calculateOldSatisfyRectByShop(param1:ShopFieldObjectVo) : Rectangle
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Rectangle = null;
         _loc2_ = param1.satisfyRange;
         if(_loc4_)
         {
            _loc2_.x = param1.formerPosition.x - (_loc2_.width - param1.configPlayfieldItemVo.sizeX) / 2;
            if(!_loc3_)
            {
               _loc2_.y = param1.formerPosition.y - (_loc2_.height - param1.configPlayfieldItemVo.sizeY) / 2;
            }
         }
         return _loc2_;
      }
      
      public function updateShop(param1:ShopFieldObjectVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.updateResidentialNeeds(this.calculateSatisfyRectByShop(param1));
         }
      }
      
      public function updateShopsOldResidentials(param1:ShopFieldObjectVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.updateResidentialNeeds(this.calculateOldSatisfyRectByShop(param1));
         }
      }
      
      public function updateNeedsForSingleResidential(param1:ResidentialFieldObjectVo) : void
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc2_:NeedVo = null;
         var _loc3_:* = false;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:ShopFieldObjectVo = null;
         for each(_loc2_ in param1.residentialNeeds)
         {
            if(_loc11_ || Boolean(this))
            {
               §§push(false);
               if(_loc11_)
               {
                  _loc3_ = §§pop();
                  if(_loc12_)
                  {
                     continue;
                  }
                  _loc2_.isSatisfied = false;
                  if(!_loc12_)
                  {
                     addr0067:
                     §§push(int(param1.matrixCoordinates.x));
                     if(_loc11_)
                     {
                        _loc4_ = §§pop();
                        if(!_loc12_)
                        {
                           loop1:
                           while(true)
                           {
                              §§push(_loc4_);
                              loop2:
                              while(true)
                              {
                                 if(§§pop() >= param1.matrixCoordinates.width + param1.matrixCoordinates.x)
                                 {
                                    break loop1;
                                 }
                                 §§push(_loc3_);
                                 if(_loc11_)
                                 {
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc12_ && _loc3_))
                                          {
                                             break;
                                          }
                                          addr01ca:
                                          while(true)
                                          {
                                             §§push(_loc5_);
                                             if(_loc12_ && Boolean(param1))
                                             {
                                                continue loop2;
                                             }
                                          }
                                          addr01ca:
                                       }
                                       else
                                       {
                                          §§push(int(param1.matrixCoordinates.y));
                                          if(_loc11_)
                                          {
                                             while(true)
                                             {
                                                _loc5_ = §§pop();
                                                if(_loc12_)
                                                {
                                                   break loop2;
                                                }
                                                §§goto(addr01ca);
                                             }
                                             addr00ab:
                                          }
                                       }
                                       while(true)
                                       {
                                          if(§§pop() >= param1.matrixCoordinates.height + param1.matrixCoordinates.y)
                                          {
                                             if(_loc11_ || Boolean(param1))
                                             {
                                                break loop2;
                                             }
                                             continue loop1;
                                          }
                                          §§push(_loc3_);
                                       }
                                    }
                                    break loop1;
                                    addr0088:
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc11_ || _loc3_)
                                       {
                                          break loop2;
                                       }
                                       break loop1;
                                    }
                                    §§push(0);
                                    if(_loc12_)
                                    {
                                       break;
                                    }
                                    for each(_loc6_ in this._buffMatrix.getColBy2DCoordinates(_loc4_,_loc5_))
                                    {
                                       if(_loc6_ == null)
                                       {
                                          continue;
                                       }
                                       if(!(_loc12_ && Boolean(_loc2_)))
                                       {
                                          if(_loc2_.shopConfigIds.indexOf(_loc6_.configPlayfieldItemVo.id) == -1)
                                          {
                                             continue;
                                          }
                                          if(!(_loc12_ && Boolean(param1)))
                                          {
                                             §§push(_loc6_.isOperational);
                                             if(!_loc12_)
                                             {
                                                §§push(§§pop());
                                                if(!(_loc12_ && Boolean(this)))
                                                {
                                                   var _temp_10:* = §§pop();
                                                   §§push(_temp_10);
                                                   if(_temp_10)
                                                   {
                                                      if(_loc11_ || Boolean(this))
                                                      {
                                                         §§pop();
                                                         if(_loc11_ || Boolean(this))
                                                         {
                                                            §§push(_loc6_.isConnectedToStreet);
                                                            if(!(_loc12_ && Boolean(param1)))
                                                            {
                                                               addr018c:
                                                               if(!§§pop())
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc11_ || Boolean(_loc2_))
                                                               {
                                                                  addr019e:
                                                                  _loc2_.isSatisfied = true;
                                                                  if(_loc12_)
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                               addr01a9:
                                                               §§push(true);
                                                            }
                                                            addr01aa:
                                                            _loc3_ = §§pop();
                                                            break;
                                                         }
                                                         §§goto(addr019e);
                                                      }
                                                      §§goto(addr01aa);
                                                   }
                                                   §§goto(addr018c);
                                                }
                                             }
                                             §§goto(addr01aa);
                                          }
                                       }
                                       §§goto(addr01a9);
                                    }
                                    if(_loc11_ || _loc3_)
                                    {
                                       _loc5_++;
                                    }
                                    §§push(_loc3_);
                                 }
                              }
                              while(true)
                              {
                                 _loc4_++;
                                 if(_loc12_)
                                 {
                                    break;
                                 }
                                 continue loop1;
                              }
                              break;
                           }
                           continue;
                           addr020e:
                        }
                        §§goto(addr01ca);
                     }
                     §§goto(addr00ab);
                  }
                  §§goto(addr020e);
               }
               §§goto(addr0088);
            }
            §§goto(addr0067);
         }
      }
      
      public function updateResidentialNeeds(param1:Rectangle) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc3_:* = 0;
         var _loc4_:ResidentialFieldObjectVo = null;
         var _loc2_:int = param1.x;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            loop1:
            while(§§pop() < param1.width + param1.x)
            {
               §§push(int(param1.y));
               if(!(_loc5_ && Boolean(_loc2_)))
               {
                  _loc3_ = §§pop();
                  if(!_loc6_)
                  {
                     break;
                  }
                  while(true)
                  {
                     §§push(_loc3_);
                     if(!(_loc6_ || Boolean(_loc3_)))
                     {
                        break;
                     }
                     if(§§pop() >= param1.height + param1.y)
                     {
                        if(_loc5_ && Boolean(_loc3_))
                        {
                           break loop1;
                        }
                        _loc2_++;
                        if(_loc5_)
                        {
                           break loop1;
                        }
                        continue loop0;
                     }
                     _loc4_ = ResidentialFieldObjectVo(this._residentialMatrix.getObject(_loc2_,_loc3_));
                     if(_loc4_ != null)
                     {
                        if(!(_loc5_ && Boolean(_loc2_)))
                        {
                           this.updateNeedsForSingleResidential(_loc4_);
                           if(!_loc6_)
                           {
                              continue;
                           }
                        }
                     }
                     _loc3_++;
                  }
               }
            }
            break;
         }
      }
      
      public function reset() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Point = new Point(this._playfieldProxy.fieldSize.x,this._playfieldProxy.fieldSize.y);
         if(!_loc2_)
         {
            this._buffMatrix = new ArrayMatrix3D(_loc1_.x,_loc1_.y,_loc1_.x * _loc1_.y);
            if(!_loc2_)
            {
               addr0063:
               this._residentialMatrix = new ArrayMatrix(_loc1_.x,_loc1_.y);
            }
            return;
         }
         §§goto(addr0063);
      }
      
      public function removeResidential(param1:ResidentialFieldObjectVo) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:* = 0;
         var _loc2_:int = 0;
         loop0:
         do
         {
            §§push(_loc2_);
            loop1:
            while(§§pop() < param1.configPlayfieldItemVo.sizeX)
            {
               §§push(0);
               if(!_loc5_)
               {
                  _loc3_ = §§pop();
                  if(_loc5_)
                  {
                  }
                  while(true)
                  {
                     §§push(_loc3_);
                     if(!(_loc5_ && Boolean(param1)))
                     {
                        if(§§pop() >= param1.configPlayfieldItemVo.sizeY)
                        {
                           if(_loc4_)
                           {
                              break;
                           }
                           break loop1;
                        }
                        this._residentialMatrix.setObject(null,param1.matrixCoordinates.x + _loc2_,param1.matrixCoordinates.y + _loc3_);
                        if(!(_loc5_ && Boolean(this)))
                        {
                           _loc3_++;
                           if(!_loc4_)
                           {
                              break;
                           }
                        }
                        continue;
                     }
                     continue loop1;
                  }
                  continue loop0;
               }
            }
            break;
         }
         while(_loc2_++, !(_loc5_ && Boolean(_loc3_)));
         
      }
      
      public function updateResidential(param1:ResidentialFieldObjectVo) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:* = 0;
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            loop1:
            while(true)
            {
               §§push(this._residentialMatrix);
               loop2:
               while(true)
               {
                  §§push(§§pop().maxX);
                  loop3:
                  while(§§pop() < §§pop())
                  {
                     §§push(0);
                     if(_loc5_ && Boolean(_loc2_))
                     {
                        continue loop1;
                     }
                     _loc3_ = §§pop();
                     if(!(_loc5_ && Boolean(this)))
                     {
                        while(true)
                        {
                           §§push(_loc3_);
                           if(_loc4_)
                           {
                              §§push(this._residentialMatrix);
                              if(!(_loc4_ || Boolean(_loc2_)))
                              {
                                 break;
                              }
                              §§push(§§pop().maxY);
                              if(_loc4_ || Boolean(param1))
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    if(!_loc4_)
                                    {
                                       break loop3;
                                    }
                                 }
                                 else
                                 {
                                    if(param1 != this._residentialMatrix.getObject(_loc2_,_loc3_))
                                    {
                                       _loc3_++;
                                       if(_loc5_)
                                       {
                                          break loop3;
                                       }
                                       continue;
                                    }
                                    if(_loc5_ && Boolean(param1))
                                    {
                                       break loop0;
                                    }
                                    this.removeResidential(this._residentialMatrix.getObject(_loc2_,_loc3_) as ResidentialFieldObjectVo);
                                    if(!(_loc5_ && Boolean(this)))
                                    {
                                       addr008c:
                                       this.addResidential(param1);
                                       if(!(_loc4_ || Boolean(_loc2_)))
                                       {
                                          break loop0;
                                       }
                                       this.updateResidentialNeeds(param1.matrixCoordinates);
                                       if(!_loc5_)
                                       {
                                          break loop0;
                                       }
                                    }
                                 }
                                 _loc2_++;
                                 if(_loc5_ && Boolean(_loc3_))
                                 {
                                    break loop3;
                                 }
                                 continue loop0;
                              }
                              continue loop3;
                           }
                           continue loop1;
                        }
                        continue loop2;
                     }
                     §§goto(addr008c);
                  }
                  break;
               }
               break;
            }
            return;
         }
      }
      
      public function addResidential(param1:ResidentialFieldObjectVo) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:* = 0;
         var _loc2_:ResidentialFieldObjectVo = param1;
         var _loc3_:int = 0;
         loop0:
         do
         {
            §§push(_loc3_);
            loop1:
            while(true)
            {
               if(§§pop() >= _loc2_.configPlayfieldItemVo.sizeX)
               {
                  if(_loc6_ || Boolean(_loc3_))
                  {
                     break;
                  }
                  return;
               }
               addr00d8:
               §§push(0);
               if(!_loc5_)
               {
                  _loc4_ = §§pop();
                  if(!(_loc6_ || Boolean(param1)))
                  {
                     break;
                  }
                  while(true)
                  {
                     §§push(_loc4_);
                     if(_loc5_)
                     {
                        break;
                     }
                     if(§§pop() >= _loc2_.configPlayfieldItemVo.sizeY)
                     {
                        if(_loc6_ || Boolean(_loc3_))
                        {
                           continue loop0;
                        }
                     }
                     else
                     {
                        this._residentialMatrix.setObject(_loc2_,_loc2_.matrixCoordinates.x + _loc3_,_loc2_.matrixCoordinates.y + _loc4_);
                        if(_loc6_)
                        {
                           _loc4_++;
                           if(!_loc6_)
                           {
                              break loop1;
                           }
                           continue;
                        }
                     }
                  }
               }
            }
            break;
         }
         while(_loc3_++, _loc6_ || Boolean(this));
         
         this.updateNeedsForSingleResidential(_loc2_);
         §§goto(addr00d8);
      }
      
      public function get buffMatrix() : ArrayMatrix3D
      {
         return this._buffMatrix;
      }
      
      public function get residentialMatrix() : ArrayMatrix
      {
         return this._residentialMatrix;
      }
      
      public function set residentialMatrix(param1:ArrayMatrix) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._residentialMatrix = param1;
         }
      }
   }
}

