package net.bigpoint.cityrama.model.common.vo
{
   import flash.errors.IllegalOperationError;
   import net.bigpoint.cityrama.constants.ServerImprovementConstants;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.util.LocaUtils;
   
   public class RewardItemComponentVo
   {
      
      public static const TYPE_SPECIAL_GOOD:String = "TYPE_SPECIAL_GOOD";
      
      public static const TYPE_SPECIAL_PERMISSION:String = "TYPE_SPECIAL_PERMISSION";
      
      public static const TYPE_NORMAL_PERMISSION:String = "TYPE_NORMAL_PERMISSION";
      
      public static const TYPE_NORMAL_GOOD:String = "TYPE_NORMAL_GOOD";
      
      public static const TYPE_EVENT_GOOD:String = "TYPE_EVENT_GOOD";
      
      public static const TYPE_RESOURCE:String = "TYPE_RESOURCE";
      
      public static const TYPE_IMPROVEMENT:String = "TYPE_IMPROVEMENT";
      
      public static const TYPE_ASSIST:String = "TYPE_ASSIST";
      
      public static const PRICE_ICON_GOOD:String = "PRICE_ICON_GOOD";
      
      public static const PRICE_ICON_PERMISSSON:String = "PRICE_ICON_PERMISSSON";
      
      public static const PRICE_ICON_CONSTRUCTED:String = "PRICE_ICON_CONSTRUCTED";
      
      public static const PRICE_ICON_XP:String = "PRICE_ICON_XP";
      
      public static const PRICE_ICON_VC:String = "PRICE_ICON_VC";
      
      public static const PRICE_ICON_PP:String = "PRICE_ICON_PP";
      
      public static const PRICE_ICON_EP:String = "PRICE_ICON_EP";
      
      public static const PRICE_ICON_RC:String = "PRICE_ICON_RC";
      
      public static const PRICE_ICON_NONE:String = "PRICE_ICON_NONE";
      
      public static const SIZE_BIG:String = "bigskin";
      
      public static const SIZE_SMALL:String = "smallskin";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || RewardItemComponentVo)
      {
         TYPE_SPECIAL_GOOD = "TYPE_SPECIAL_GOOD";
         if(_loc2_)
         {
            TYPE_SPECIAL_PERMISSION = "TYPE_SPECIAL_PERMISSION";
            if(_loc2_)
            {
               TYPE_NORMAL_PERMISSION = "TYPE_NORMAL_PERMISSION";
               if(_loc2_)
               {
                  TYPE_NORMAL_GOOD = "TYPE_NORMAL_GOOD";
                  if(!(_loc1_ && RewardItemComponentVo))
                  {
                     TYPE_EVENT_GOOD = "TYPE_EVENT_GOOD";
                     if(!_loc1_)
                     {
                        TYPE_RESOURCE = "TYPE_RESOURCE";
                        if(_loc2_)
                        {
                           TYPE_IMPROVEMENT = "TYPE_IMPROVEMENT";
                           if(!_loc1_)
                           {
                              addr0088:
                              TYPE_ASSIST = "TYPE_ASSIST";
                              if(!(_loc1_ && _loc2_))
                              {
                                 addr00a8:
                                 PRICE_ICON_GOOD = "PRICE_ICON_GOOD";
                                 if(!_loc1_)
                                 {
                                    PRICE_ICON_PERMISSSON = "PRICE_ICON_PERMISSSON";
                                    if(_loc2_ || RewardItemComponentVo)
                                    {
                                       PRICE_ICON_CONSTRUCTED = "PRICE_ICON_CONSTRUCTED";
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          addr00e2:
                                          PRICE_ICON_XP = "PRICE_ICON_XP";
                                          if(!_loc1_)
                                          {
                                             §§goto(addr00f0);
                                          }
                                          §§goto(addr012c);
                                       }
                                    }
                                    §§goto(addr015f);
                                 }
                                 §§goto(addr012c);
                              }
                              addr00f0:
                              PRICE_ICON_VC = "PRICE_ICON_VC";
                              if(!_loc1_)
                              {
                                 addr00fe:
                                 PRICE_ICON_PP = "PRICE_ICON_PP";
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    §§goto(addr0114);
                                 }
                                 §§goto(addr0150);
                              }
                              §§goto(addr0114);
                           }
                           addr0114:
                           PRICE_ICON_EP = "PRICE_ICON_EP";
                           if(_loc2_)
                           {
                              addr012c:
                              PRICE_ICON_RC = "PRICE_ICON_RC";
                              if(_loc2_)
                              {
                                 addr013a:
                                 PRICE_ICON_NONE = "PRICE_ICON_NONE";
                                 if(!(_loc1_ && RewardItemComponentVo))
                                 {
                                    addr0150:
                                    SIZE_BIG = "bigskin";
                                    if(!_loc1_)
                                    {
                                       addr015f:
                                       SIZE_SMALL = "smallskin";
                                    }
                                    §§goto(addr0168);
                                 }
                                 §§goto(addr015f);
                              }
                           }
                           addr0168:
                           return;
                        }
                        §§goto(addr00fe);
                     }
                     §§goto(addr012c);
                  }
                  §§goto(addr013a);
               }
               §§goto(addr00a8);
            }
            §§goto(addr0150);
         }
         §§goto(addr0088);
      }
      §§goto(addr00e2);
      
      private var typeValidationList:Array;
      
      private var iconValidationList:Array;
      
      private var qualityBadgeValidationList:Array;
      
      private var _size:String;
      
      private var _type:String;
      
      private var _price:Number;
      
      private var _priceIcon:String;
      
      private var _itemIconLib:String;
      
      private var _itemIcon:String;
      
      private var _quality:String;
      
      private var _useNew:Boolean = false;
      
      private var _showCreationAnimation:Boolean = false;
      
      private var _orderId:uint;
      
      private var _bonusFactor:uint = 1;
      
      private var _tooltip:String;
      
      private var _cid:Number;
      
      private var _buffGfxId:Number = -1;
      
      public function RewardItemComponentVo(param1:Object)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this.typeValidationList = [TYPE_RESOURCE,TYPE_SPECIAL_GOOD,TYPE_SPECIAL_PERMISSION,TYPE_NORMAL_PERMISSION,TYPE_NORMAL_GOOD,TYPE_EVENT_GOOD,TYPE_IMPROVEMENT,TYPE_ASSIST];
            if(!(_loc3_ && _loc3_))
            {
               this.iconValidationList = [PRICE_ICON_GOOD,PRICE_ICON_PERMISSSON,PRICE_ICON_CONSTRUCTED,PRICE_ICON_XP,PRICE_ICON_VC,PRICE_ICON_PP,PRICE_ICON_EP,PRICE_ICON_RC,PRICE_ICON_NONE];
               if(_loc2_)
               {
                  this.qualityBadgeValidationList = [ServerImprovementConstants.QUALITY_COMMON,ServerImprovementConstants.QUALITY_RARE,ServerImprovementConstants.QUALITY_EPIC,ServerImprovementConstants.QUALITY_LEGENDARY];
                  if(!(_loc3_ && _loc2_))
                  {
                     super();
                     if(!(_loc3_ && Boolean(this)))
                     {
                        this.checkVo(param1);
                        if(_loc2_ || Boolean(param1))
                        {
                           this._type = param1.type;
                           if(_loc2_ || _loc2_)
                           {
                              this._size = param1.size;
                              if(_loc2_ || _loc3_)
                              {
                                 this._useNew = param1.useNew;
                                 if(_loc2_)
                                 {
                                    addr0106:
                                    this._priceIcon = param1.priceIcon;
                                    if(!_loc3_)
                                    {
                                       this._itemIconLib = param1.itemIconLib;
                                       if(_loc2_ || Boolean(this))
                                       {
                                          addr012a:
                                          this._itemIcon = param1.itemIcon;
                                          if(_loc2_)
                                          {
                                             addr0139:
                                             this._price = param1.price;
                                             if(!_loc3_)
                                             {
                                                addr0148:
                                                this._tooltip = param1.tooltip;
                                                if(_loc2_)
                                                {
                                                   this._bonusFactor = param1.factor;
                                                   if(_loc2_)
                                                   {
                                                      §§goto(addr0165);
                                                   }
                                                   §§goto(addr0188);
                                                }
                                                §§goto(addr01ac);
                                             }
                                             §§goto(addr0165);
                                          }
                                          §§goto(addr0148);
                                       }
                                       addr0165:
                                       this._quality = param1.quality;
                                       if(!(_loc3_ && Boolean(this)))
                                       {
                                          addr0188:
                                          this._cid = param1.cid;
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             addr019e:
                                             if(param1.buffGFX)
                                             {
                                                if(!_loc3_)
                                                {
                                                   addr01ac:
                                                   this._buffGfxId = param1.buffGFX;
                                                }
                                             }
                                             §§goto(addr01b5);
                                          }
                                          §§goto(addr01ac);
                                       }
                                       §§goto(addr01b5);
                                    }
                                    §§goto(addr012a);
                                 }
                                 §§goto(addr0139);
                              }
                           }
                           §§goto(addr0148);
                        }
                        addr01b5:
                        return;
                     }
                     §§goto(addr019e);
                  }
               }
               §§goto(addr0165);
            }
            §§goto(addr0106);
         }
         §§goto(addr019e);
      }
      
      private static function validate(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(!param1)
            {
               if(!_loc2_)
               {
                  throw new IllegalOperationError("RewardItemComponentVo:: object malformed!!");
               }
            }
         }
      }
      
      private function checkVo(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(§§findproperty(validate));
            §§push(param1 == null);
            if(!_loc3_)
            {
               §§push(!§§pop());
            }
            §§pop().validate(§§pop());
            if(_loc2_ || Boolean(param1))
            {
               §§push(§§findproperty(validate));
               §§push(param1.type == null);
               if(_loc2_ || Boolean(param1))
               {
                  §§push(!§§pop());
               }
               §§pop().validate(§§pop());
               if(!(_loc3_ && _loc2_))
               {
                  §§push(§§findproperty(validate));
                  §§push(this.typeValidationList.indexOf(param1.type) == -1);
                  if(_loc2_)
                  {
                     §§push(!§§pop());
                  }
                  §§pop().validate(§§pop());
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§push(§§findproperty(validate));
                     §§push(this.iconValidationList.indexOf(param1.priceIcon) == -1);
                     if(!(_loc3_ && Boolean(param1)))
                     {
                        §§push(!§§pop());
                     }
                     §§pop().validate(§§pop());
                     if(_loc2_ || Boolean(param1))
                     {
                        addr00c4:
                        §§push(§§findproperty(validate));
                        if(_loc2_)
                        {
                           §§push(param1.size == SIZE_BIG);
                           if(!_loc3_)
                           {
                              var _temp_7:* = §§pop();
                              §§push(_temp_7);
                              if(!_temp_7)
                              {
                                 if(!(_loc3_ && Boolean(param1)))
                                 {
                                    addr00eb:
                                    §§pop();
                                    addr00ec:
                                    §§push(param1.size == SIZE_SMALL);
                                 }
                              }
                              §§pop().validate(§§pop());
                              if(_loc2_)
                              {
                                 §§goto(addr00fd);
                              }
                              §§goto(addr0164);
                           }
                           §§goto(addr00eb);
                        }
                        §§goto(addr00ec);
                     }
                     addr00fd:
                     §§push(§§findproperty(validate));
                     §§push(param1.itemIconLib == null);
                     if(!_loc3_)
                     {
                        §§push(!§§pop());
                     }
                     §§pop().validate(§§pop());
                     if(_loc2_ || _loc2_)
                     {
                        §§push(§§findproperty(validate));
                        §§push(param1.price == null);
                        if(_loc2_ || _loc3_)
                        {
                           §§push(!§§pop());
                        }
                        §§pop().validate(§§pop());
                        if(!_loc3_)
                        {
                           addr013f:
                           §§push(§§findproperty(validate));
                           §§push(param1.itemIcon == null);
                           if(!_loc3_)
                           {
                              §§push(!§§pop());
                           }
                           §§pop().validate(§§pop());
                           if(_loc2_)
                           {
                              addr0164:
                              if(param1.type == TYPE_IMPROVEMENT)
                              {
                                 if(_loc2_)
                                 {
                                    §§push(§§findproperty(validate));
                                    §§push(this.qualityBadgeValidationList.indexOf(param1.quality) == -1);
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       §§push(!§§pop());
                                    }
                                    §§pop().validate(§§pop());
                                 }
                              }
                           }
                           §§goto(addr0199);
                        }
                        §§goto(addr0164);
                     }
                     §§goto(addr0199);
                  }
                  §§goto(addr00c4);
               }
               §§goto(addr013f);
            }
            addr0199:
            return;
         }
         §§goto(addr0164);
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get price() : String
      {
         return LocaUtils.getThousendSeperatedNumber(this._price);
      }
      
      private function get itemIconLib() : String
      {
         return this._itemIconLib;
      }
      
      private function get itemIcon() : String
      {
         return this._itemIcon;
      }
      
      private function get priceIconLib() : String
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:* = this._priceIcon + this._size;
         if(_loc2_)
         {
            §§push(PRICE_ICON_GOOD);
            if(!_loc3_)
            {
               §§push(SIZE_BIG);
               if(_loc2_)
               {
                  if(§§pop() + §§pop() === _loc1_)
                  {
                     if(_loc2_ || _loc3_)
                     {
                        §§push(0);
                        if(_loc2_)
                        {
                        }
                     }
                     else
                     {
                        addr0386:
                        §§push(14);
                        if(_loc2_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(PRICE_ICON_GOOD);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(SIZE_SMALL);
                        if(_loc2_)
                        {
                           if(§§pop() + §§pop() === _loc1_)
                           {
                              if(_loc2_)
                              {
                                 §§push(1);
                                 if(_loc3_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr0358:
                                 §§push(13);
                                 if(_loc2_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push(PRICE_ICON_PERMISSSON);
                              if(_loc2_ || _loc2_)
                              {
                                 §§push(SIZE_BIG);
                                 if(_loc2_)
                                 {
                                    addr00bf:
                                    if(§§pop() + §§pop() === _loc1_)
                                    {
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          §§push(2);
                                          if(_loc3_ && _loc3_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          addr017c:
                                          §§push(5);
                                          if(_loc3_ && Boolean(this))
                                          {
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(PRICE_ICON_PERMISSSON);
                                       if(!(_loc3_ && Boolean(_loc1_)))
                                       {
                                          addr00f5:
                                          §§push(SIZE_SMALL);
                                          if(!_loc3_)
                                          {
                                             if(§§pop() + §§pop() === _loc1_)
                                             {
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   addr0110:
                                                   §§push(3);
                                                   if(_loc2_)
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   addr0232:
                                                   §§push(8);
                                                   if(_loc3_ && _loc3_)
                                                   {
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(PRICE_ICON_CONSTRUCTED);
                                                if(_loc2_)
                                                {
                                                   §§push(SIZE_BIG);
                                                   if(_loc2_ || _loc3_)
                                                   {
                                                      addr0133:
                                                      if(§§pop() + §§pop() === _loc1_)
                                                      {
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            §§push(4);
                                                            if(_loc3_ && Boolean(_loc1_))
                                                            {
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr0270:
                                                            §§push(9);
                                                            if(_loc3_ && Boolean(_loc1_))
                                                            {
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(PRICE_ICON_CONSTRUCTED);
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            §§push(SIZE_SMALL);
                                                            if(!_loc3_)
                                                            {
                                                               if(§§pop() + §§pop() === _loc1_)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§goto(addr017c);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr0358);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(PRICE_ICON_XP);
                                                                  if(_loc2_)
                                                                  {
                                                                     §§push(SIZE_BIG);
                                                                     if(_loc2_ || _loc2_)
                                                                     {
                                                                        if(§§pop() + §§pop() === _loc1_)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§push(6);
                                                                              if(_loc3_ && Boolean(this))
                                                                              {
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr02f4:
                                                                              §§push(11);
                                                                              if(_loc2_)
                                                                              {
                                                                              }
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(PRICE_ICON_XP);
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§push(SIZE_SMALL);
                                                                              if(!(_loc3_ && _loc2_))
                                                                              {
                                                                                 if(§§pop() + §§pop() === _loc1_)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       §§push(7);
                                                                                       if(_loc3_ && _loc2_)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr0270);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(PRICE_ICON_VC);
                                                                                    if(!(_loc3_ && _loc2_))
                                                                                    {
                                                                                       addr0217:
                                                                                       §§push(SIZE_BIG);
                                                                                       if(_loc2_ || _loc3_)
                                                                                       {
                                                                                          if(§§pop() + §§pop() === _loc1_)
                                                                                          {
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                §§goto(addr0232);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr0358);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(PRICE_ICON_VC);
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                addr024d:
                                                                                                §§push(SIZE_SMALL);
                                                                                                if(!(_loc3_ && Boolean(this)))
                                                                                                {
                                                                                                   addr025d:
                                                                                                   if(§§pop() + §§pop() === _loc1_)
                                                                                                   {
                                                                                                      if(_loc2_ || _loc2_)
                                                                                                      {
                                                                                                         §§goto(addr0270);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr0322:
                                                                                                         §§push(12);
                                                                                                         if(_loc3_ && _loc2_)
                                                                                                         {
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(PRICE_ICON_PP);
                                                                                                      if(_loc2_ || Boolean(_loc1_))
                                                                                                      {
                                                                                                         addr0293:
                                                                                                         §§push(SIZE_BIG);
                                                                                                         if(!(_loc3_ && Boolean(_loc1_)))
                                                                                                         {
                                                                                                            if(§§pop() + §§pop() === _loc1_)
                                                                                                            {
                                                                                                               if(!(_loc3_ && Boolean(_loc1_)))
                                                                                                               {
                                                                                                                  §§push(10);
                                                                                                                  if(_loc3_ && Boolean(_loc1_))
                                                                                                                  {
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr0386);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(PRICE_ICON_PP);
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  §§push(SIZE_SMALL);
                                                                                                                  if(_loc2_ || Boolean(_loc1_))
                                                                                                                  {
                                                                                                                     addr02e1:
                                                                                                                     if(§§pop() + §§pop() === _loc1_)
                                                                                                                     {
                                                                                                                        if(_loc2_ || Boolean(this))
                                                                                                                        {
                                                                                                                           §§goto(addr02f4);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr0358);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push(PRICE_ICON_EP);
                                                                                                                        if(_loc2_)
                                                                                                                        {
                                                                                                                           §§push(SIZE_BIG);
                                                                                                                           if(!(_loc3_ && Boolean(_loc1_)))
                                                                                                                           {
                                                                                                                              addr0317:
                                                                                                                              if(§§pop() + §§pop() === _loc1_)
                                                                                                                              {
                                                                                                                                 if(!_loc3_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr0322);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr03ab:
                                                                                                                                    §§push(15);
                                                                                                                                    if(_loc3_ && _loc3_)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr03ca);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§push(PRICE_ICON_EP);
                                                                                                                                 if(!_loc3_)
                                                                                                                                 {
                                                                                                                                    addr033d:
                                                                                                                                    §§push(SIZE_SMALL);
                                                                                                                                    if(!(_loc3_ && Boolean(this)))
                                                                                                                                    {
                                                                                                                                       addr034d:
                                                                                                                                       if(§§pop() + §§pop() === _loc1_)
                                                                                                                                       {
                                                                                                                                          if(!_loc3_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr0358);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr0386);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§push(PRICE_ICON_RC);
                                                                                                                                          if(_loc2_)
                                                                                                                                          {
                                                                                                                                             addr036b:
                                                                                                                                             §§push(SIZE_BIG);
                                                                                                                                             if(_loc2_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                addr037b:
                                                                                                                                                if(§§pop() + §§pop() === _loc1_)
                                                                                                                                                {
                                                                                                                                                   if(_loc2_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr0386);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr03ab);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr03a5);
                                                                                                                                                }
                                                                                                                                                §§goto(addr03ab);
                                                                                                                                             }
                                                                                                                                             addr03a5:
                                                                                                                                             §§goto(addr03a2);
                                                                                                                                          }
                                                                                                                                          addr03a2:
                                                                                                                                          if(PRICE_ICON_RC + SIZE_SMALL === _loc1_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr03ab);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§push(16);
                                                                                                                                          }
                                                                                                                                          §§goto(addr03ca);
                                                                                                                                       }
                                                                                                                                       §§goto(addr03ca);
                                                                                                                                    }
                                                                                                                                    §§goto(addr037b);
                                                                                                                                 }
                                                                                                                                 §§goto(addr036b);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr037b);
                                                                                                                        }
                                                                                                                        §§goto(addr033d);
                                                                                                                     }
                                                                                                                     §§goto(addr03ca);
                                                                                                                  }
                                                                                                                  §§goto(addr0317);
                                                                                                               }
                                                                                                               §§goto(addr033d);
                                                                                                            }
                                                                                                            §§goto(addr03ca);
                                                                                                         }
                                                                                                         §§goto(addr0317);
                                                                                                      }
                                                                                                      §§goto(addr033d);
                                                                                                   }
                                                                                                   §§goto(addr03ca);
                                                                                                }
                                                                                                §§goto(addr02e1);
                                                                                             }
                                                                                             §§goto(addr0293);
                                                                                          }
                                                                                          §§goto(addr03ca);
                                                                                       }
                                                                                       §§goto(addr025d);
                                                                                    }
                                                                                    §§goto(addr024d);
                                                                                 }
                                                                                 §§goto(addr03ca);
                                                                              }
                                                                              §§goto(addr02e1);
                                                                           }
                                                                           §§goto(addr036b);
                                                                        }
                                                                        §§goto(addr03ca);
                                                                     }
                                                                     §§goto(addr034d);
                                                                  }
                                                                  §§goto(addr0217);
                                                               }
                                                               §§goto(addr03ca);
                                                            }
                                                            §§goto(addr025d);
                                                         }
                                                         §§goto(addr033d);
                                                      }
                                                      §§goto(addr03ca);
                                                   }
                                                   §§goto(addr034d);
                                                }
                                                §§goto(addr0217);
                                             }
                                             §§goto(addr03ca);
                                          }
                                          §§goto(addr0317);
                                       }
                                       §§goto(addr036b);
                                    }
                                    §§goto(addr03ca);
                                 }
                                 §§goto(addr037b);
                              }
                              §§goto(addr00f5);
                           }
                           §§goto(addr03ca);
                        }
                        §§goto(addr0133);
                     }
                     §§goto(addr03a2);
                  }
                  addr03ca:
                  switch(§§pop())
                  {
                     case 0:
                     case 1:
                     case 2:
                     case 3:
                     case 4:
                     case 5:
                     case 6:
                     case 7:
                     case 8:
                     case 9:
                     case 10:
                     case 11:
                     case 12:
                     case 13:
                     case 14:
                     case 15:
                        §§push("gui_resources_icons");
                        if(_loc2_ || _loc3_)
                        {
                           return §§pop();
                        }
                        break;
                     default:
                        return "";
                  }
                  return §§pop();
               }
               §§goto(addr00bf);
            }
            §§goto(addr00f5);
         }
         §§goto(addr0110);
      }
      
      public function get sortint() : int
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:int = 0;
         §§push(this._type);
         loop0:
         while(true)
         {
            var _loc2_:* = §§pop();
            if(_loc4_ || Boolean(_loc1_))
            {
               while(true)
               {
                  §§push(TYPE_NORMAL_GOOD);
                  if(_loc4_ || _loc3_)
                  {
                     §§push(_loc2_);
                     if(!_loc3_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(!_loc3_)
                           {
                              §§push(0);
                              if(_loc3_ && _loc2_)
                              {
                              }
                              loop3:
                              while(true)
                              {
                                 if(_loc4_)
                                 {
                                    while(true)
                                    {
                                       switch(§§pop())
                                       {
                                          case 0:
                                             §§push(6);
                                             if(!(_loc3_ && Boolean(_loc1_)))
                                             {
                                                return §§pop();
                                             }
                                             addr0064:
                                             return §§pop();
                                             break;
                                          case 1:
                                             §§push(this.useNew);
                                             if(!(_loc3_ && Boolean(this)))
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      §§push(2);
                                                      if(_loc3_)
                                                      {
                                                         §§goto(addr00e2);
                                                      }
                                                      §§goto(addr0064);
                                                   }
                                                   else
                                                   {
                                                      addr05d9:
                                                      §§push(_loc1_);
                                                      addr016f:
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(4);
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      return §§pop();
                                                   }
                                                }
                                                §§goto(addr05da);
                                             }
                                             §§goto(addr00ab);
                                          case 2:
                                             §§push(5);
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                return §§pop();
                                             }
                                             addr0161:
                                             return §§pop();
                                             break;
                                          case 3:
                                             addr00ab:
                                             if(§§pop())
                                             {
                                                if(_loc4_ || _loc2_)
                                                {
                                                   §§push(1);
                                                   if(!(_loc3_ && Boolean(_loc1_)))
                                                   {
                                                      return §§pop();
                                                   }
                                                   §§goto(addr0161);
                                                }
                                                addr035d:
                                                §§push(3);
                                                if(_loc4_)
                                                {
                                                   return §§pop();
                                                }
                                                break;
                                             }
                                             §§push(3);
                                             if(!_loc4_)
                                             {
                                                §§goto(addr014a);
                                             }
                                             addr00e2:
                                             return §§pop();
                                             return this.useNew;
                                          case 4:
                                             §§push(7);
                                             if(!(_loc3_ && Boolean(this)))
                                             {
                                                return §§pop();
                                             }
                                             break;
                                          case 5:
                                             §§push(this._priceIcon);
                                             if(_loc4_ || Boolean(this))
                                             {
                                                _loc2_ = §§pop();
                                                if(!(_loc4_ || _loc3_))
                                                {
                                                   break loop3;
                                                }
                                                §§push(PRICE_ICON_XP);
                                                if(!_loc3_)
                                                {
                                                   §§push(_loc2_);
                                                   if(_loc4_ || _loc2_)
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            §§push(0);
                                                            if(_loc3_ && _loc2_)
                                                            {
                                                            }
                                                            §§goto(addr02c7);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(PRICE_ICON_VC);
                                                         if(_loc4_ || _loc2_)
                                                         {
                                                            §§push(_loc2_);
                                                            if(!_loc3_)
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     §§push(1);
                                                                     if(!(_loc4_ || Boolean(this)))
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr02a2:
                                                                     §§push(4);
                                                                     if(!(_loc4_ || Boolean(this)))
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(PRICE_ICON_EP);
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     §§push(_loc2_);
                                                                     if(_loc3_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 §§goto(addr0462);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(TYPE_SPECIAL_GOOD);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 §§push(_loc2_);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    if(§§pop() === §§pop())
                                                                                    {
                                                                                       if(!(_loc3_ && Boolean(this)))
                                                                                       {
                                                                                          §§push(2);
                                                                                          if(_loc4_)
                                                                                          {
                                                                                          }
                                                                                          continue loop3;
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(TYPE_SPECIAL_PERMISSION);
                                                                                       if(!(_loc3_ && _loc2_))
                                                                                       {
                                                                                          §§goto(addr04b2);
                                                                                       }
                                                                                       §§goto(addr04e5);
                                                                                    }
                                                                                    §§goto(addr0506);
                                                                                 }
                                                                                 §§goto(addr04f4);
                                                                              }
                                                                              §§goto(addr04b2);
                                                                           }
                                                                           §§goto(addr056f);
                                                                        }
                                                                        break loop3;
                                                                        addr0459:
                                                                     }
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           §§push(2);
                                                                           if(!(_loc4_ || _loc3_))
                                                                           {
                                                                              continue loop3;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(1);
                                                                              if(_loc4_ || _loc2_)
                                                                              {
                                                                              }
                                                                              continue loop3;
                                                                           }
                                                                           addr0462:
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(PRICE_ICON_PP);
                                                                        if(_loc4_ || _loc3_)
                                                                        {
                                                                           §§push(_loc2_);
                                                                           if(_loc4_)
                                                                           {
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §§push(3);
                                                                                    if(!(_loc4_ || Boolean(this)))
                                                                                    {
                                                                                       continue loop3;
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr0462);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(PRICE_ICON_RC);
                                                                                 if(_loc4_ || Boolean(this))
                                                                                 {
                                                                                    addr0277:
                                                                                    §§push(_loc2_);
                                                                                    if(!(_loc3_ && _loc3_))
                                                                                    {
                                                                                       if(§§pop() === §§pop())
                                                                                       {
                                                                                          if(_loc4_ || Boolean(this))
                                                                                          {
                                                                                             §§goto(addr02a2);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(3);
                                                                                                if(_loc3_ && _loc3_)
                                                                                                {
                                                                                                }
                                                                                                continue loop3;
                                                                                             }
                                                                                             addr04c9:
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(5);
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             continue loop3;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr02c7);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop() === §§pop())
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(5);
                                                                                                   if(_loc4_ || Boolean(_loc1_))
                                                                                                   {
                                                                                                   }
                                                                                                   continue loop3;
                                                                                                }
                                                                                                addr053b:
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(TYPE_IMPROVEMENT);
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc2_);
                                                                                                   if(_loc4_ || Boolean(_loc1_))
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop() === §§pop())
                                                                                                         {
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(6);
                                                                                                                  if(_loc4_ || _loc3_)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  continue loop3;
                                                                                                               }
                                                                                                               addr056f:
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(TYPE_ASSIST);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc2_);
                                                                                                               addr0595:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop() !== §§pop())
                                                                                                                  {
                                                                                                                     §§push(8);
                                                                                                                     continue loop3;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr0594:
                                                                                                         }
                                                                                                         addr0599:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(7);
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                            }
                                                                                                            continue loop3;
                                                                                                         }
                                                                                                      }
                                                                                                      addr0566:
                                                                                                   }
                                                                                                   §§goto(addr0595);
                                                                                                }
                                                                                                addr0557:
                                                                                             }
                                                                                             §§goto(addr0594);
                                                                                          }
                                                                                          §§goto(addr0599);
                                                                                       }
                                                                                       addr0531:
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc2_);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop() === §§pop())
                                                                                             {
                                                                                                if(!(_loc3_ && Boolean(this)))
                                                                                                {
                                                                                                   §§goto(addr04c9);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(TYPE_EVENT_GOOD);
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc2_);
                                                                                                      if(_loc4_ || Boolean(_loc1_))
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop() === §§pop())
                                                                                                            {
                                                                                                               if(_loc4_ || _loc3_)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(4);
                                                                                                                     if(_loc4_ || Boolean(this))
                                                                                                                     {
                                                                                                                     }
                                                                                                                     continue loop3;
                                                                                                                  }
                                                                                                                  addr0506:
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(TYPE_RESOURCE);
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  §§push(_loc2_);
                                                                                                                  if(_loc4_ || Boolean(this))
                                                                                                                  {
                                                                                                                     §§goto(addr0531);
                                                                                                                  }
                                                                                                                  §§goto(addr0595);
                                                                                                               }
                                                                                                               §§goto(addr0594);
                                                                                                            }
                                                                                                            §§goto(addr0599);
                                                                                                         }
                                                                                                         addr04f4:
                                                                                                      }
                                                                                                      §§goto(addr0595);
                                                                                                   }
                                                                                                   addr04e5:
                                                                                                }
                                                                                                §§goto(addr0594);
                                                                                             }
                                                                                             §§goto(addr056f);
                                                                                          }
                                                                                          addr04b8:
                                                                                       }
                                                                                    }
                                                                                    addr04b2:
                                                                                 }
                                                                                 §§goto(addr0595);
                                                                              }
                                                                              §§goto(addr02c7);
                                                                           }
                                                                           §§goto(addr04b8);
                                                                        }
                                                                        §§goto(addr04b2);
                                                                     }
                                                                     addr02c7:
                                                                     if(_loc4_ || _loc3_)
                                                                     {
                                                                        addr02d7:
                                                                        switch(§§pop())
                                                                        {
                                                                           case 1:
                                                                              §§push(10);
                                                                              if(_loc3_ && _loc3_)
                                                                              {
                                                                                 §§goto(addr02d7);
                                                                              }
                                                                              return §§pop();
                                                                           default:
                                                                              §§goto(addr016f);
                                                                           case 0:
                                                                              §§push(11);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 return §§pop();
                                                                              }
                                                                              addr03e0:
                                                                              return §§pop();
                                                                              break;
                                                                           case 2:
                                                                           case 3:
                                                                              §§push(12);
                                                                              if(!(_loc4_ || Boolean(_loc1_)))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              addr014a:
                                                                              return §§pop();
                                                                              break;
                                                                           case 4:
                                                                              §§push(9);
                                                                              if(_loc3_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§goto(addr0161);
                                                                        }
                                                                     }
                                                                     addr0399:
                                                                     return §§pop();
                                                                     §§goto(addr04b2);
                                                                  }
                                                                  §§goto(addr0277);
                                                               }
                                                               §§goto(addr02c7);
                                                            }
                                                            §§goto(addr04b8);
                                                         }
                                                         §§goto(addr0557);
                                                      }
                                                      §§goto(addr04c9);
                                                   }
                                                   §§goto(addr0566);
                                                }
                                                §§goto(addr0277);
                                             }
                                             else
                                             {
                                                addr03ba:
                                                addr03c0:
                                                if(§§pop() == ServerImprovementConstants.QUALITY_COMMON)
                                                {
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      addr03d1:
                                                      §§push(1);
                                                      if(!(_loc3_ && Boolean(_loc1_)))
                                                      {
                                                         §§goto(addr03e0);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr05d9);
                                                   }
                                                   §§goto(addr05da);
                                                }
                                             }
                                             §§goto(addr05d9);
                                          case 6:
                                             §§push(this._quality);
                                             if(_loc4_)
                                             {
                                                §§push(ServerImprovementConstants.QUALITY_LEGENDARY);
                                                if(_loc4_)
                                                {
                                                   if(§§pop() == §§pop())
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         §§push(4);
                                                         if(_loc4_)
                                                         {
                                                            return §§pop();
                                                         }
                                                         §§goto(addr0399);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr03d1);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(this._quality);
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         §§push(ServerImprovementConstants.QUALITY_EPIC);
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            addr0354:
                                                            if(§§pop() == §§pop())
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  §§goto(addr035d);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(this._quality);
                                                               if(!_loc3_)
                                                               {
                                                                  §§push(ServerImprovementConstants.QUALITY_RARE);
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§push(2);
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§goto(addr0399);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr03d1);
                                                                        }
                                                                        §§goto(addr03e0);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(this._quality);
                                                                        if(!(_loc4_ || Boolean(_loc1_)))
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        §§goto(addr03ba);
                                                                     }
                                                                  }
                                                                  §§goto(addr03c0);
                                                               }
                                                               §§goto(addr03ba);
                                                            }
                                                            §§goto(addr05d9);
                                                         }
                                                         §§goto(addr03c0);
                                                      }
                                                      §§goto(addr03ba);
                                                   }
                                                   §§goto(addr05da);
                                                }
                                                §§goto(addr0354);
                                             }
                                             continue loop0;
                                          case 7:
                                             §§push(1);
                                             if(!_loc3_)
                                             {
                                                break;
                                             }
                                             continue;
                                          default:
                                             §§goto(addr05d9);
                                       }
                                       return §§pop();
                                    }
                                 }
                                 addr05da:
                                 return §§pop();
                              }
                              continue;
                           }
                           §§goto(addr053b);
                        }
                        else
                        {
                           §§push(TYPE_NORMAL_PERMISSION);
                           if(!_loc3_)
                           {
                              §§push(_loc2_);
                              if(!_loc3_)
                              {
                                 §§goto(addr0459);
                              }
                              §§goto(addr0595);
                           }
                        }
                        §§goto(addr04e5);
                     }
                     §§goto(addr04f4);
                  }
                  §§goto(addr0594);
               }
            }
            §§goto(addr0462);
         }
      }
      
      private function get priceIcon() : String
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:* = this._priceIcon + this._size;
         if(_loc2_)
         {
            §§push(PRICE_ICON_GOOD);
            if(_loc2_)
            {
               §§push(SIZE_BIG);
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  if(§§pop() + §§pop() === _loc1_)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(0);
                        if(_loc2_)
                        {
                        }
                     }
                     else
                     {
                        addr0334:
                        §§push(6);
                        if(_loc3_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(PRICE_ICON_GOOD);
                     if(_loc2_)
                     {
                        §§push(SIZE_SMALL);
                        if(!_loc3_)
                        {
                           if(§§pop() + §§pop() === _loc1_)
                           {
                              if(_loc2_)
                              {
                                 §§push(1);
                                 if(_loc3_ && _loc2_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr0404:
                                 §§push(10);
                                 if(_loc3_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push(PRICE_ICON_PERMISSSON);
                              if(_loc2_ || _loc2_)
                              {
                                 §§push(SIZE_BIG);
                                 if(_loc2_)
                                 {
                                    if(§§pop() + §§pop() === _loc1_)
                                    {
                                       if(!(_loc3_ && Boolean(_loc1_)))
                                       {
                                          §§push(2);
                                          if(_loc2_ || _loc2_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          addr02c8:
                                          §§push(4);
                                          if(_loc2_)
                                          {
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(PRICE_ICON_PERMISSSON);
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          §§push(SIZE_SMALL);
                                          if(_loc2_ || _loc3_)
                                          {
                                             if(§§pop() + §§pop() === _loc1_)
                                             {
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   §§push(3);
                                                   if(_loc2_ || Boolean(this))
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   addr049e:
                                                   §§push(13);
                                                   if(_loc2_ || Boolean(this))
                                                   {
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(PRICE_ICON_CONSTRUCTED);
                                                if(!_loc3_)
                                                {
                                                   addr02a5:
                                                   §§push(SIZE_BIG);
                                                   if(_loc2_ || Boolean(_loc1_))
                                                   {
                                                      if(§§pop() + §§pop() === _loc1_)
                                                      {
                                                         if(_loc2_ || _loc3_)
                                                         {
                                                            §§goto(addr02c8);
                                                         }
                                                         else
                                                         {
                                                            addr0432:
                                                            §§push(11);
                                                            if(_loc2_ || _loc3_)
                                                            {
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(PRICE_ICON_CONSTRUCTED);
                                                         if(_loc2_)
                                                         {
                                                            addr02db:
                                                            §§push(SIZE_SMALL);
                                                            if(_loc2_ || _loc2_)
                                                            {
                                                               if(§§pop() + §§pop() === _loc1_)
                                                               {
                                                                  if(_loc2_ || _loc2_)
                                                                  {
                                                                     §§push(5);
                                                                     if(_loc3_)
                                                                     {
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr04f8:
                                                                     §§push(15);
                                                                     if(_loc3_ && Boolean(_loc1_))
                                                                     {
                                                                     }
                                                                  }
                                                                  §§goto(addr0517);
                                                               }
                                                               else
                                                               {
                                                                  §§push(PRICE_ICON_XP);
                                                                  if(_loc2_ || _loc3_)
                                                                  {
                                                                     §§push(SIZE_BIG);
                                                                     if(!_loc3_)
                                                                     {
                                                                        addr0321:
                                                                        if(§§pop() + §§pop() === _loc1_)
                                                                        {
                                                                           if(_loc2_ || _loc3_)
                                                                           {
                                                                              §§goto(addr0334);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr0362:
                                                                              §§push(7);
                                                                              if(_loc2_ || _loc3_)
                                                                              {
                                                                              }
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(PRICE_ICON_XP);
                                                                           if(_loc2_)
                                                                           {
                                                                              §§push(SIZE_SMALL);
                                                                              if(_loc2_ || _loc2_)
                                                                              {
                                                                                 addr0357:
                                                                                 if(§§pop() + §§pop() === _loc1_)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       §§goto(addr0362);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr0398:
                                                                                       §§push(8);
                                                                                       if(_loc3_ && Boolean(_loc1_))
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(PRICE_ICON_VC);
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       addr037d:
                                                                                       §§push(SIZE_BIG);
                                                                                       if(!(_loc3_ && Boolean(this)))
                                                                                       {
                                                                                          if(§§pop() + §§pop() === _loc1_)
                                                                                          {
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                §§goto(addr0398);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr04f8);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(PRICE_ICON_VC);
                                                                                             if(_loc2_ || Boolean(this))
                                                                                             {
                                                                                                addr03bb:
                                                                                                §§push(SIZE_SMALL);
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   addr03c3:
                                                                                                   if(§§pop() + §§pop() === _loc1_)
                                                                                                   {
                                                                                                      if(_loc2_ || _loc3_)
                                                                                                      {
                                                                                                         §§push(9);
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr0470:
                                                                                                         §§push(12);
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(PRICE_ICON_PP);
                                                                                                      if(!(_loc3_ && Boolean(this)))
                                                                                                      {
                                                                                                         addr03f1:
                                                                                                         §§push(SIZE_BIG);
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            addr03f9:
                                                                                                            if(§§pop() + §§pop() === _loc1_)
                                                                                                            {
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  §§goto(addr0404);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr0470);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(PRICE_ICON_PP);
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  addr0417:
                                                                                                                  §§push(SIZE_SMALL);
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     addr041f:
                                                                                                                     if(§§pop() + §§pop() === _loc1_)
                                                                                                                     {
                                                                                                                        if(_loc2_ || Boolean(_loc1_))
                                                                                                                        {
                                                                                                                           §§goto(addr0432);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr04d4:
                                                                                                                           §§push(14);
                                                                                                                           if(_loc2_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push(PRICE_ICON_EP);
                                                                                                                        if(_loc2_)
                                                                                                                        {
                                                                                                                           §§push(SIZE_BIG);
                                                                                                                           if(!(_loc3_ && _loc3_))
                                                                                                                           {
                                                                                                                              if(§§pop() + §§pop() === _loc1_)
                                                                                                                              {
                                                                                                                                 if(!(_loc3_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    §§goto(addr0470);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr04f8);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§push(PRICE_ICON_EP);
                                                                                                                                 if(!(_loc3_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    addr048b:
                                                                                                                                    §§push(SIZE_SMALL);
                                                                                                                                    if(_loc2_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr0493);
                                                                                                                                    }
                                                                                                                                    §§goto(addr04c1);
                                                                                                                                 }
                                                                                                                                 §§goto(addr04ef);
                                                                                                                              }
                                                                                                                              §§goto(addr04f8);
                                                                                                                           }
                                                                                                                           addr0493:
                                                                                                                           if(§§pop() + §§pop() === _loc1_)
                                                                                                                           {
                                                                                                                              if(_loc2_)
                                                                                                                              {
                                                                                                                                 §§goto(addr049e);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr04d4);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push(PRICE_ICON_RC);
                                                                                                                              if(_loc2_)
                                                                                                                              {
                                                                                                                                 addr04b9:
                                                                                                                                 §§push(SIZE_BIG);
                                                                                                                                 if(_loc2_)
                                                                                                                                 {
                                                                                                                                    addr04c1:
                                                                                                                                    if(§§pop() + §§pop() === _loc1_)
                                                                                                                                    {
                                                                                                                                       if(_loc2_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr04d4);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr04f8);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr04f2);
                                                                                                                                    }
                                                                                                                                    §§goto(addr04f8);
                                                                                                                                 }
                                                                                                                                 addr04f2:
                                                                                                                                 §§goto(addr04ef);
                                                                                                                              }
                                                                                                                              addr04ef:
                                                                                                                              if(PRICE_ICON_RC + SIZE_SMALL === _loc1_)
                                                                                                                              {
                                                                                                                                 §§goto(addr04f8);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§push(16);
                                                                                                                              }
                                                                                                                              §§goto(addr0517);
                                                                                                                           }
                                                                                                                           §§goto(addr0517);
                                                                                                                        }
                                                                                                                        §§goto(addr04b9);
                                                                                                                     }
                                                                                                                     §§goto(addr0517);
                                                                                                                  }
                                                                                                                  §§goto(addr04c1);
                                                                                                               }
                                                                                                               §§goto(addr04b9);
                                                                                                            }
                                                                                                            §§goto(addr0517);
                                                                                                         }
                                                                                                         §§goto(addr04c1);
                                                                                                      }
                                                                                                      §§goto(addr048b);
                                                                                                   }
                                                                                                   §§goto(addr0517);
                                                                                                }
                                                                                                §§goto(addr04f2);
                                                                                             }
                                                                                             §§goto(addr0417);
                                                                                          }
                                                                                          §§goto(addr04f8);
                                                                                       }
                                                                                       §§goto(addr0493);
                                                                                    }
                                                                                    §§goto(addr04ef);
                                                                                 }
                                                                                 §§goto(addr0517);
                                                                              }
                                                                              §§goto(addr04c1);
                                                                           }
                                                                           §§goto(addr048b);
                                                                        }
                                                                        §§goto(addr0517);
                                                                     }
                                                                     §§goto(addr041f);
                                                                  }
                                                                  §§goto(addr037d);
                                                               }
                                                            }
                                                            §§goto(addr0357);
                                                         }
                                                         §§goto(addr03f1);
                                                      }
                                                      §§goto(addr0517);
                                                   }
                                                   §§goto(addr041f);
                                                }
                                                §§goto(addr04b9);
                                             }
                                             §§goto(addr0517);
                                          }
                                          §§goto(addr03f9);
                                       }
                                       §§goto(addr02db);
                                    }
                                    §§goto(addr0517);
                                 }
                                 §§goto(addr0321);
                              }
                              §§goto(addr02a5);
                           }
                           §§goto(addr0517);
                        }
                        §§goto(addr0321);
                     }
                     §§goto(addr0417);
                  }
                  addr0517:
                  switch(§§pop())
                  {
                     case 0:
                        §§push("product_icon");
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           return §§pop();
                        }
                        §§goto(addr00d6);
                        break;
                     case 1:
                        §§push("product_icon_small");
                        if(_loc2_)
                        {
                           return §§pop();
                        }
                        §§goto(addr010c);
                        break;
                     case 2:
                        §§push("permission_icon");
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           return §§pop();
                        }
                        §§goto(addr0123);
                        break;
                     case 3:
                        §§push("permission_icon_small");
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           return §§pop();
                        }
                        §§goto(addr016f);
                        break;
                     case 4:
                        §§push("permission_icon_constructed");
                        if(_loc2_ || _loc2_)
                        {
                           return §§pop();
                        }
                        break;
                     case 5:
                        §§push("permission_icon_constructed_small");
                        if(_loc2_ || _loc3_)
                        {
                           return §§pop();
                        }
                        §§goto(addr0151);
                        break;
                     case 6:
                        §§push("xp_icon");
                        if(_loc2_ || Boolean(this))
                        {
                           return §§pop();
                        }
                        §§goto(addr010c);
                        break;
                     case 7:
                        §§push("xp_icon_small");
                        if(!(_loc3_ && _loc3_))
                        {
                           addr00d6:
                           return §§pop();
                        }
                        §§goto(addr00f5);
                        break;
                     case 8:
                        §§push("layer_cc_icon");
                        if(_loc2_ || _loc3_)
                        {
                           addr00f5:
                           return §§pop();
                        }
                        §§goto(addr016f);
                        break;
                     case 9:
                        §§push("layer_cc_icon_small");
                        if(!_loc3_)
                        {
                           addr010c:
                           return §§pop();
                        }
                        break;
                     case 10:
                        §§push("pp_icon");
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0123:
                           return §§pop();
                        }
                        §§goto(addr0553);
                        break;
                     case 11:
                        §§push("pp_icon_small");
                        if(_loc2_ || _loc3_)
                        {
                           return §§pop();
                        }
                        break;
                     case 12:
                        §§push("ep_icon");
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr0151:
                           return §§pop();
                        }
                        break;
                     case 13:
                        §§push("ep_icon_small");
                        if(_loc2_)
                        {
                           break;
                        }
                        §§goto(addr0553);
                        break;
                     case 14:
                        §§push("dd_button_icon");
                        if(_loc2_)
                        {
                           addr016f:
                           return §§pop();
                        }
                        §§goto(addr0553);
                        break;
                     case 15:
                        §§push("rc_icon_small");
                        if(!_loc3_)
                        {
                           return §§pop();
                        }
                        §§goto(addr0553);
                        break;
                     default:
                        addr0553:
                        return §§pop();
                        return "";
                  }
                  return §§pop();
               }
               §§goto(addr03c3);
            }
            §§goto(addr03bb);
         }
         §§goto(addr04d4);
      }
      
      public function get useNew() : Boolean
      {
         return this._useNew;
      }
      
      public function get size() : String
      {
         return this._size;
      }
      
      public function get tooltip() : String
      {
         return this._tooltip;
      }
      
      public function get showCreationAnimation() : Boolean
      {
         return this._showCreationAnimation;
      }
      
      public function set showCreationAnimation(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._showCreationAnimation = param1;
         }
      }
      
      public function get orderId() : uint
      {
         return this._orderId;
      }
      
      public function set orderId(param1:uint) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._orderId = param1;
         }
      }
      
      public function get bonusFactor() : uint
      {
         return this._bonusFactor;
      }
      
      public function get qualityBadge() : BriskDynaVo
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = this._quality + this.size;
         if(_loc3_ || _loc3_)
         {
            §§push(ServerImprovementConstants.QUALITY_COMMON);
            if(!_loc2_)
            {
               §§push(SIZE_SMALL);
               if(_loc3_)
               {
                  if(§§pop() + §§pop() === _loc1_)
                  {
                     if(_loc3_)
                     {
                        §§push(0);
                        if(_loc3_ || _loc3_)
                        {
                        }
                     }
                     else
                     {
                        addr016d:
                        §§push(2);
                        if(_loc3_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(ServerImprovementConstants.QUALITY_RARE);
                     if(!(_loc2_ && _loc3_))
                     {
                        addr011d:
                        §§push(SIZE_SMALL);
                        if(_loc3_)
                        {
                           if(§§pop() + §§pop() === _loc1_)
                           {
                              if(_loc3_)
                              {
                                 addr013c:
                                 §§push(1);
                                 if(_loc2_ && _loc3_)
                                 {
                                 }
                              }
                              else
                              {
                                 §§goto(addr016d);
                              }
                           }
                           else
                           {
                              §§push(ServerImprovementConstants.QUALITY_EPIC);
                              if(_loc3_)
                              {
                                 §§push(SIZE_SMALL);
                                 if(!_loc2_)
                                 {
                                    addr0162:
                                    if(§§pop() + §§pop() === _loc1_)
                                    {
                                       if(!_loc2_)
                                       {
                                          §§goto(addr016d);
                                       }
                                       else
                                       {
                                          addr01e7:
                                          §§push(4);
                                          if(_loc2_ && Boolean(_loc1_))
                                          {
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(ServerImprovementConstants.QUALITY_LEGENDARY);
                                       if(!(_loc2_ && Boolean(this)))
                                       {
                                          addr018b:
                                          §§push(SIZE_SMALL);
                                          if(!(_loc2_ && Boolean(_loc1_)))
                                          {
                                             if(§§pop() + §§pop() === _loc1_)
                                             {
                                                if(_loc3_)
                                                {
                                                   §§push(3);
                                                   if(_loc2_ && _loc3_)
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr01e7);
                                                }
                                             }
                                             else
                                             {
                                                §§push(ServerImprovementConstants.QUALITY_COMMON);
                                                if(_loc3_ || _loc2_)
                                                {
                                                   §§push(SIZE_BIG);
                                                   if(_loc3_)
                                                   {
                                                      addr01d4:
                                                      if(§§pop() + §§pop() === _loc1_)
                                                      {
                                                         if(!(_loc2_ && Boolean(this)))
                                                         {
                                                            §§goto(addr01e7);
                                                         }
                                                         else
                                                         {
                                                            addr0249:
                                                            §§push(6);
                                                            if(_loc2_)
                                                            {
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(ServerImprovementConstants.QUALITY_RARE);
                                                         if(_loc3_)
                                                         {
                                                            §§push(SIZE_BIG);
                                                            if(_loc3_)
                                                            {
                                                               addr020d:
                                                               if(§§pop() + §§pop() === _loc1_)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     §§push(5);
                                                                     if(_loc2_)
                                                                     {
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr0271:
                                                                     §§push(7);
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                     }
                                                                  }
                                                                  addr0290:
                                                                  switch(§§pop())
                                                                  {
                                                                     case 0:
                                                                        return new BriskDynaVo("gui_popups_paperPopup","hip_badge_common_small");
                                                                     case 1:
                                                                        return new BriskDynaVo("gui_popups_paperPopup","hip_badge_rare_small");
                                                                     case 2:
                                                                        return new BriskDynaVo("gui_popups_paperPopup","hip_badge_epic_small");
                                                                     case 3:
                                                                        return new BriskDynaVo("gui_popups_paperPopup","hip_badge_legendary_small");
                                                                     case 4:
                                                                        return new BriskDynaVo("gui_popups_paperPopup","hip_badge_common_big");
                                                                     case 5:
                                                                        return new BriskDynaVo("gui_popups_paperPopup","hip_badge_rare_big");
                                                                     case 6:
                                                                        return new BriskDynaVo("gui_popups_paperPopup","hip_badge_epic_big");
                                                                     case 7:
                                                                        return new BriskDynaVo("gui_popups_paperPopup","hip_badge_legendary_big");
                                                                     default:
                                                                        return null;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(ServerImprovementConstants.QUALITY_EPIC);
                                                                  if(!_loc2_)
                                                                  {
                                                                     addr022e:
                                                                     §§push(SIZE_BIG);
                                                                     if(!_loc2_)
                                                                     {
                                                                        if(§§pop() + §§pop() === _loc1_)
                                                                        {
                                                                           if(!(_loc2_ && _loc2_))
                                                                           {
                                                                              §§goto(addr0249);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr0271);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr026b:
                                                                           addr0268:
                                                                           if(ServerImprovementConstants.QUALITY_LEGENDARY + SIZE_BIG === _loc1_)
                                                                           {
                                                                              §§goto(addr0271);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(8);
                                                                           }
                                                                           §§goto(addr0290);
                                                                        }
                                                                        §§goto(addr0271);
                                                                     }
                                                                     §§goto(addr026b);
                                                                  }
                                                                  §§goto(addr0268);
                                                               }
                                                               §§goto(addr0271);
                                                            }
                                                            §§goto(addr026b);
                                                         }
                                                         §§goto(addr022e);
                                                      }
                                                      §§goto(addr0290);
                                                   }
                                                   §§goto(addr020d);
                                                }
                                                §§goto(addr022e);
                                             }
                                             §§goto(addr0290);
                                          }
                                          §§goto(addr020d);
                                       }
                                       §§goto(addr0268);
                                    }
                                    §§goto(addr0290);
                                 }
                                 §§goto(addr01d4);
                              }
                              §§goto(addr022e);
                           }
                           §§goto(addr0290);
                        }
                        §§goto(addr0162);
                     }
                     §§goto(addr018b);
                  }
                  §§goto(addr0290);
               }
               §§goto(addr01d4);
            }
            §§goto(addr011d);
         }
         §§goto(addr013c);
      }
      
      public function get buffGfxVo() : BriskDynaVo
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push(§§findproperty(BriskDynaVo));
         §§push("gui_popups_citywheel");
         §§push("buff_");
         if(_loc2_)
         {
            §§push(§§pop() + this._buffGfxId);
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop() + "_small");
            }
         }
         return new §§pop().BriskDynaVo(§§pop(),§§pop());
      }
      
      public function get configId() : Number
      {
         return this._cid;
      }
      
      public function get priceIconVo() : BriskDynaVo
      {
         return new BriskDynaVo(this.priceIconLib,this.priceIcon);
      }
      
      public function get itemIconVo() : BriskDynaVo
      {
         return new BriskDynaVo(this.itemIconLib,this.itemIcon);
      }
      
      public function get showBuff() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this._buffGfxId == -1);
            if(!(_loc2_ && _loc1_))
            {
               §§push(!§§pop());
               if(!(_loc2_ && Boolean(this)))
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(_temp_3)
                  {
                     if(!_loc2_)
                     {
                        addr004b:
                        §§pop();
                        if(_loc1_ || _loc1_)
                        {
                           §§push(this._size == SIZE_SMALL);
                           if(_loc1_ || Boolean(this))
                           {
                              addr0078:
                              if(§§pop())
                              {
                                 if(_loc1_)
                                 {
                                    addr0081:
                                    §§push(true);
                                    if(_loc1_)
                                    {
                                       §§goto(addr0087);
                                    }
                                 }
                                 else
                                 {
                                    addr0088:
                                    §§push(false);
                                 }
                                 §§goto(addr0089);
                              }
                              §§goto(addr0088);
                           }
                           addr0089:
                           return §§pop();
                        }
                        §§goto(addr0081);
                     }
                     addr0087:
                     return §§pop();
                  }
               }
               §§goto(addr0078);
            }
            §§goto(addr004b);
         }
         §§goto(addr0081);
      }
   }
}

