package net.bigpoint.cityrama.model.cityTreasury
{
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.constants.ServerPaymentPackConst;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.FeatureProxy;
   import net.bigpoint.cityrama.model.FlashVarsProxy;
   import net.bigpoint.cityrama.model.cityTreasury.vo.CityTreasuryCategoryVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.CityTreasuryTabVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.ICityTreasuryContentVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.TreasuryIconOverrideVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryBonusCodeVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryCashForActionVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryExternalPackVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryInternalPackItemVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryInternalPackVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryRealCurrencyPackItemVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryRealCurrencyPackVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryRentCollectorVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.ExternalPaymentPackInfoVo;
   import net.bigpoint.cityrama.model.common.vo.CategoryMenuListVo;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.events.vo.ServerEventTypeConst;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.improvement.CityImprovementProxy;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigEventDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackUpsellingDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigTagDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PlayerPaymentUpsellDTO;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class CityTreasuryProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "CityTreasuryProxy";
      
      public static const PAYMENT_CATEGORY_STARTER:String = "cat=4";
      
      public static const PAYMENT_CATEGORY_CASH_FOR_ACTION:String = "cfa=1";
      
      public static const PAYMENT_CATEGORY_DEFAULT:String = "cat=101";
      
      public static const PAYMENT_CATEGORY_REAL_CURRENCY:String = "cat=1";
      
      public static const PAYMENT_CATEGORY_EXTERNAL:String = "cat=6";
      
      private static const SPECIAL_CAT_CASH_FOR_ACTION:String = "SPECIAL_CAT_CASH_FOR_ACTION";
      
      private static const SPECIAL_CAT_BONUS_CODE:String = "SPECIAL_CAT_BONUS_CODE";
      
      private static const UPSELL_ICON_CONSTANT:String = "upsell";
      
      private static const BONUSDAY_ICON_CONSTANT:String = "bonusDay";
      
      private static const RENTCOLLECTOR_SALE_ICON_CONSTANT:String = "upsell";
      
      private static const UPSELL_ICON_PRIORITY:int = 100;
      
      private static const BONUSDAYUPSELL_ICON_PRIORITY:int = 200;
      
      private static const RENTCOLLECTOR_SALE_ICON_PRIORITY:int = 300;
      
      public static const resourceCategories:Vector.<String>;
      
      public static const goodCategories:Vector.<String>;
      
      public static const specialCategories:Vector.<String>;
      
      public static const starterPackCategories:Vector.<String>;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         NAME = "CityTreasuryProxy";
         if(_loc2_ || _loc2_)
         {
            PAYMENT_CATEGORY_STARTER = "cat=4";
            if(_loc2_ || _loc2_)
            {
               PAYMENT_CATEGORY_CASH_FOR_ACTION = "cfa=1";
               if(_loc2_)
               {
                  addr0050:
                  PAYMENT_CATEGORY_DEFAULT = "cat=101";
                  if(!(_loc1_ && _loc1_))
                  {
                     PAYMENT_CATEGORY_REAL_CURRENCY = "cat=1";
                     if(_loc2_ || _loc1_)
                     {
                        addr007e:
                        PAYMENT_CATEGORY_EXTERNAL = "cat=6";
                        if(!(_loc1_ && _loc1_))
                        {
                           SPECIAL_CAT_CASH_FOR_ACTION = "SPECIAL_CAT_CASH_FOR_ACTION";
                           if(_loc2_ || _loc1_)
                           {
                              SPECIAL_CAT_BONUS_CODE = "SPECIAL_CAT_BONUS_CODE";
                              if(_loc2_ || CityTreasuryProxy)
                              {
                                 UPSELL_ICON_CONSTANT = "upsell";
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    addr00d7:
                                    BONUSDAY_ICON_CONSTANT = "bonusDay";
                                    if(!(_loc1_ && CityTreasuryProxy))
                                    {
                                       RENTCOLLECTOR_SALE_ICON_CONSTANT = "upsell";
                                       if(!_loc1_)
                                       {
                                          addr00fc:
                                          UPSELL_ICON_PRIORITY = 100;
                                          if(_loc2_ || _loc1_)
                                          {
                                             BONUSDAYUPSELL_ICON_PRIORITY = 200;
                                             if(!(_loc1_ && _loc2_))
                                             {
                                                addr0131:
                                                RENTCOLLECTOR_SALE_ICON_PRIORITY = 300;
                                                if(_loc2_)
                                                {
                                                   §§goto(addr013f);
                                                }
                                                §§goto(addr01ff);
                                             }
                                             §§goto(addr01c9);
                                          }
                                          addr013f:
                                          resourceCategories = new <String>[ServerResConst.RESOURCE_REALCURRENCY,ServerResConst.RESOURCE_VIRTUALCURRENCY,ServerResConst.RESOURCE_PRODUCTIONPOINTS,ServerResConst.RESOURCE_EDUCATIONPOINTS];
                                          if(_loc2_)
                                          {
                                             addr0184:
                                             goodCategories = new <String>[ServerTagConstants.CLIENT_GOOD_GRANITE,ServerTagConstants.GOOD_KEY,ServerTagConstants.GOOD_DEXTRO,ServerTagConstants.CLIENT_GOOD_WHEEL_TOKEN];
                                             if(_loc2_)
                                             {
                                                addr01c9:
                                                specialCategories = new <String>[SPECIAL_CAT_CASH_FOR_ACTION,SPECIAL_CAT_BONUS_CODE,ServerTagConstants.CLIENT_PAYMENT_PACK_RENT_COLLECTOR];
                                                if(_loc2_)
                                                {
                                                   addr01ff:
                                                   §§push(§§findproperty(starterPackCategories));
                                                   var _temp_24:* = new <String>[ServerTagConstants.CLIENT_PAYMENT_PACK_STARTER,ServerTagConstants.CLIENT_PAYMENT_PACK_STUDENT,ServerTagConstants.CLIENT_PAYMENT_PACK_PRODUCTION,ServerTagConstants.CLIENT_PAYMENT_PACK_FIRST_AID,ServerTagConstants.CLIENT_PAYMENT_PACK_GAMBLING];
                                                   §§pop().starterPackCategories = new <String>[ServerTagConstants.CLIENT_PAYMENT_PACK_STARTER,ServerTagConstants.CLIENT_PAYMENT_PACK_STUDENT,ServerTagConstants.CLIENT_PAYMENT_PACK_PRODUCTION,ServerTagConstants.CLIENT_PAYMENT_PACK_FIRST_AID,ServerTagConstants.CLIENT_PAYMENT_PACK_GAMBLING];
                                                }
                                                §§goto(addr0254);
                                             }
                                             §§goto(addr01ff);
                                          }
                                          §§goto(addr0254);
                                       }
                                       §§goto(addr0184);
                                    }
                                    §§goto(addr01c9);
                                 }
                                 §§goto(addr01ff);
                              }
                              addr0254:
                              return;
                           }
                           §§goto(addr01c9);
                        }
                        §§goto(addr00fc);
                     }
                     §§goto(addr0131);
                  }
                  §§goto(addr00d7);
               }
               §§goto(addr007e);
            }
            §§goto(addr0050);
         }
         §§goto(addr007e);
      }
      §§goto(addr00d7);
      
      private var _cP:GameConfigProxy;
      
      private var _pRP:PlayerResourceProxy;
      
      private var _fP:FeatureProxy;
      
      private var _pP:PlayerProxy;
      
      private var _tP:TimerProxy;
      
      private var _starterPackPaymentHelper:PaymentRequestHelper;
      
      private var _realCurrencyPackPaymentHelper:PaymentRequestHelper;
      
      private var _upsellPackPaymentHelper:PaymentRequestHelper;
      
      private var _rentCollectorPaymentHelper:PaymentRequestHelper;
      
      private var _treasuryIcons:Vector.<TreasuryIconOverrideVo>;
      
      private var _upsellEnabled:Boolean;
      
      public function CityTreasuryProxy()
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super(NAME);
         }
         var _loc1_:FlashVarsProxy = facade.retrieveProxy(FlashVarsProxy.NAME) as FlashVarsProxy;
         if(_loc3_ || Boolean(this))
         {
            if(_loc1_)
            {
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr0063:
                  this._upsellEnabled = _loc1_.upsellingEnabled;
               }
            }
            return;
         }
         §§goto(addr0063);
      }
      
      private static function getTabIndexOfPack(param1:ConfigPaymentPackDTO) : int
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:ConfigTagDTO = null;
         var _loc3_:int = 0;
         var _loc4_:* = param1.configTags;
         while(true)
         {
            loop0:
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc6_ && Boolean(_loc3_)))
               {
                  var _loc5_:* = _loc2_.tagName;
                  if(_loc7_)
                  {
                     §§push(ServerTagConstants.CLIENT_RESOURCE_REBUY_PACK);
                     if(_loc7_)
                     {
                        §§push(_loc5_);
                        if(!(_loc6_ && Boolean(_loc3_)))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc6_)
                              {
                                 §§push(0);
                                 if(_loc6_ && Boolean(_loc3_))
                                 {
                                 }
                              }
                              else
                              {
                                 addr0269:
                                 §§push(7);
                                 if(_loc7_)
                                 {
                                 }
                              }
                              addr0281:
                              while(true)
                              {
                                 loop3:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       §§push(CityTreasuryTabProxy.CURRENCY_TAB_INDEX);
                                       if(_loc7_ || Boolean(param1))
                                       {
                                          return §§pop();
                                       }
                                       break loop0;
                                    case 1:
                                       §§push(CityTreasuryTabProxy.GOODS_TAB_INDEX);
                                       if(_loc7_ || CityTreasuryProxy)
                                       {
                                          return §§pop();
                                       }
                                       break loop0;
                                    case 2:
                                    case 3:
                                    case 4:
                                    case 5:
                                    case 6:
                                       §§push(CityTreasuryTabProxy.PACKS_TAB_INDEX);
                                       if(_loc7_)
                                       {
                                          return §§pop();
                                       }
                                       break loop0;
                                    case 7:
                                       while(true)
                                       {
                                          §§push(CityTreasuryTabProxy.SPECIALS_TAB_INDEX);
                                          if(_loc7_ || Boolean(_loc3_))
                                          {
                                             break loop0;
                                          }
                                          break loop3;
                                       }
                                       break;
                                       addr0099:
                                    default:
                                       continue loop0;
                                 }
                              }
                           }
                           else
                           {
                              §§push(ServerTagConstants.CLIENT_ITEM_REBUY_PACK);
                              if(_loc7_ || CityTreasuryProxy)
                              {
                                 §§push(_loc5_);
                                 if(_loc7_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc7_)
                                       {
                                          addr0130:
                                          §§push(1);
                                          if(_loc7_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          addr0252:
                                          §§push(6);
                                          if(_loc7_)
                                          {
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(ServerTagConstants.CLIENT_PAYMENT_PACK_STARTER);
                                       if(_loc7_ || Boolean(_loc3_))
                                       {
                                          §§push(_loc5_);
                                          if(_loc7_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc6_)
                                                {
                                                   §§push(2);
                                                   if(_loc7_)
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   addr019a:
                                                   §§push(3);
                                                   if(_loc6_ && Boolean(param1))
                                                   {
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(ServerTagConstants.CLIENT_PAYMENT_PACK_STUDENT);
                                                if(!_loc6_)
                                                {
                                                   addr0178:
                                                   §§push(_loc5_);
                                                   if(!(_loc6_ && Boolean(_loc2_)))
                                                   {
                                                      addr0188:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc7_ || Boolean(param1))
                                                         {
                                                            §§goto(addr019a);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr0252);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(ServerTagConstants.CLIENT_PAYMENT_PACK_PRODUCTION);
                                                         if(_loc7_)
                                                         {
                                                            addr01b9:
                                                            §§push(_loc5_);
                                                            if(_loc7_ || Boolean(param1))
                                                            {
                                                               addr01c9:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc7_ || CityTreasuryProxy)
                                                                  {
                                                                     §§push(4);
                                                                     if(_loc6_)
                                                                     {
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr0214:
                                                                     §§push(5);
                                                                     if(_loc7_)
                                                                     {
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(ServerTagConstants.CLIENT_PAYMENT_PACK_FIRST_AID);
                                                                  if(_loc7_)
                                                                  {
                                                                     addr01f2:
                                                                     §§push(_loc5_);
                                                                     if(!(_loc6_ && Boolean(_loc2_)))
                                                                     {
                                                                        addr0202:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(!(_loc6_ && CityTreasuryProxy))
                                                                           {
                                                                              §§goto(addr0214);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr0269);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(ServerTagConstants.CLIENT_PAYMENT_PACK_GAMBLING);
                                                                           if(_loc7_)
                                                                           {
                                                                              addr022b:
                                                                              §§push(_loc5_);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 addr0233:
                                                                                 if(§§pop() === §§pop())
                                                                                 {
                                                                                    if(!(_loc6_ && Boolean(param1)))
                                                                                    {
                                                                                       §§goto(addr0252);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr0269);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr0265:
                                                                                    addr0263:
                                                                                    if(ServerTagConstants.CLIENT_PAYMENT_PACK_RENT_COLLECTOR === _loc5_)
                                                                                    {
                                                                                       §§goto(addr0269);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(8);
                                                                                    }
                                                                                    §§goto(addr0281);
                                                                                 }
                                                                                 §§goto(addr0269);
                                                                              }
                                                                              §§goto(addr0265);
                                                                           }
                                                                           §§goto(addr0263);
                                                                        }
                                                                        §§goto(addr0269);
                                                                     }
                                                                     §§goto(addr0233);
                                                                  }
                                                                  §§goto(addr022b);
                                                               }
                                                               §§goto(addr0281);
                                                            }
                                                            §§goto(addr0233);
                                                         }
                                                         §§goto(addr01f2);
                                                      }
                                                      §§goto(addr0281);
                                                   }
                                                   §§goto(addr01c9);
                                                }
                                                §§goto(addr0263);
                                             }
                                             §§goto(addr0281);
                                          }
                                          §§goto(addr0233);
                                       }
                                       §§goto(addr01b9);
                                    }
                                    §§goto(addr0281);
                                 }
                                 §§goto(addr0202);
                              }
                              §§goto(addr0178);
                           }
                           §§goto(addr0269);
                        }
                        §§goto(addr0188);
                     }
                     §§goto(addr0178);
                  }
                  §§goto(addr0130);
               }
               §§goto(addr0099);
            }
            return -1;
         }
         return §§pop();
      }
      
      private static function getTypeNameOfPack(param1:ConfigPaymentPackDTO) : String
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:ConfigTagDTO = null;
         var _loc3_:int = 0;
         var _loc4_:* = param1.configTags;
         while(true)
         {
            loop0:
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc6_ && Boolean(_loc2_)))
               {
                  §§push(_loc2_.tagName);
                  loop1:
                  while(true)
                  {
                     var _loc5_:* = §§pop();
                     if(_loc7_ || Boolean(param1))
                     {
                        §§push(ServerTagConstants.CLIENT_RESOURCE_REBUY_PACK);
                        if(_loc7_)
                        {
                           §§push(_loc5_);
                           if(_loc7_ || CityTreasuryProxy)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc7_)
                                 {
                                    §§push(0);
                                    if(_loc7_ || Boolean(_loc3_))
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr021e:
                                    §§push(6);
                                    if(_loc6_)
                                    {
                                    }
                                 }
                                 §§goto(addr0236);
                              }
                              §§push(ServerTagConstants.CLIENT_ITEM_REBUY_PACK);
                              if(!_loc6_)
                              {
                                 §§push(_loc5_);
                                 if(_loc7_ || Boolean(_loc3_))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          §§push(1);
                                          if(_loc7_ || Boolean(_loc3_))
                                          {
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr021e);
                                       }
                                       §§goto(addr0236);
                                    }
                                    else
                                    {
                                       §§push(ServerTagConstants.CLIENT_PAYMENT_PACK_STARTER);
                                       if(!(_loc6_ && Boolean(_loc2_)))
                                       {
                                          addr0137:
                                          §§push(_loc5_);
                                          if(_loc7_ || Boolean(_loc3_))
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc7_)
                                                {
                                                   addr0151:
                                                   §§push(2);
                                                   if(_loc7_)
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   addr0207:
                                                   §§push(5);
                                                   if(_loc6_)
                                                   {
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(ServerTagConstants.CLIENT_PAYMENT_PACK_STUDENT);
                                                if(_loc7_)
                                                {
                                                   addr0168:
                                                   §§push(_loc5_);
                                                   if(_loc7_ || CityTreasuryProxy)
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            §§push(3);
                                                            if(_loc7_ || CityTreasuryProxy)
                                                            {
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr01bb:
                                                            §§push(4);
                                                            if(_loc7_)
                                                            {
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(ServerTagConstants.CLIENT_PAYMENT_PACK_PRODUCTION);
                                                         if(_loc7_)
                                                         {
                                                            §§push(_loc5_);
                                                            if(_loc7_ || Boolean(_loc3_))
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§goto(addr01bb);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr0207);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(ServerTagConstants.CLIENT_PAYMENT_PACK_FIRST_AID);
                                                                  if(_loc7_ || CityTreasuryProxy)
                                                                  {
                                                                     addr01da:
                                                                     §§push(_loc5_);
                                                                     if(_loc7_ || Boolean(_loc2_))
                                                                     {
                                                                        addr01ea:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(_loc7_ || Boolean(_loc2_))
                                                                           {
                                                                              §§goto(addr0207);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr021e);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr021a);
                                                                        }
                                                                        §§goto(addr021e);
                                                                     }
                                                                     addr021a:
                                                                     §§goto(addr0218);
                                                                  }
                                                                  addr0218:
                                                                  if(ServerTagConstants.CLIENT_PAYMENT_PACK_GAMBLING === _loc5_)
                                                                  {
                                                                     §§goto(addr021e);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(7);
                                                                  }
                                                                  §§goto(addr0236);
                                                               }
                                                               §§goto(addr0236);
                                                            }
                                                            §§goto(addr021a);
                                                         }
                                                         §§goto(addr01da);
                                                      }
                                                      §§goto(addr0236);
                                                   }
                                                   §§goto(addr01ea);
                                                }
                                                §§goto(addr0218);
                                             }
                                             addr0236:
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   §§push(ServerTagConstants.CLIENT_RESOURCE_REBUY_PACK);
                                                   if(!_loc6_)
                                                   {
                                                      return §§pop();
                                                   }
                                                   break loop1;
                                                case 1:
                                                   §§push(ServerTagConstants.CLIENT_ITEM_REBUY_PACK);
                                                   if(!(_loc6_ && Boolean(_loc3_)))
                                                   {
                                                      break loop1;
                                                   }
                                                   break;
                                                case 2:
                                                case 3:
                                                case 4:
                                                case 5:
                                                case 6:
                                                   §§push(_loc2_.tagName);
                                                   if(_loc7_)
                                                   {
                                                      break;
                                                   }
                                                   continue;
                                                default:
                                                   continue loop0;
                                             }
                                             return §§pop();
                                          }
                                          §§goto(addr021a);
                                       }
                                       §§goto(addr0168);
                                    }
                                 }
                                 §§goto(addr021a);
                              }
                              §§goto(addr0137);
                              §§goto(addr021e);
                           }
                           §§goto(addr021a);
                        }
                        §§goto(addr0218);
                     }
                     §§goto(addr0151);
                  }
                  break;
               }
            }
            return "";
         }
         return §§pop();
      }
      
      private static function getCategoryIndexOfPack(param1:ConfigPaymentPackDTO) : int
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc2_:ConfigTagDTO = null;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         var _loc5_:* = 0;
         if(_loc9_)
         {
            if(param1.type == ServerPaymentPackConst.CURRENCY)
            {
               §§goto(addr003a);
            }
            §§goto(addr00a2);
         }
         addr003a:
         var _loc6_:* = 0;
         var _loc7_:* = param1.configTags;
         loop3:
         while(true)
         {
            §§push(§§hasnext(_loc7_,_loc6_));
            if(!(_loc9_ || Boolean(param1)))
            {
               break;
            }
            if(§§pop())
            {
               _loc2_ = §§nextvalue(_loc6_,_loc7_);
               if(_loc9_)
               {
                  if(_loc2_.tagName == ServerTagConstants.CLIENT_RESOURCE_REBUY_PACK)
                  {
                     if(!(_loc8_ && Boolean(param1)))
                     {
                        return 0;
                     }
                  }
               }
               continue;
            }
            if(_loc9_)
            {
               if(!_loc8_)
               {
                  if(!_loc8_)
                  {
                     addr00a2:
                     §§push(0);
                     if(_loc9_)
                     {
                        _loc6_ = §§pop();
                        if(_loc9_ || Boolean(param1))
                        {
                           _loc7_ = param1.configTags;
                           while(true)
                           {
                              §§push(§§hasnext(_loc7_,_loc6_));
                              if(!_loc8_)
                              {
                                 break loop3;
                              }
                              §§goto(addr0210);
                           }
                           addr0113:
                        }
                        addr01a7:
                        _loc7_ = param1.goods[0].goodConfig.tagConfigs;
                        §§goto(addr020d);
                     }
                     addr028e:
                     var _temp_7:* = §§pop();
                     §§push(_temp_7);
                     §§push(_temp_7);
                     if(!(_loc8_ && Boolean(param1)))
                     {
                        _loc5_ = §§pop();
                        if(!_loc8_)
                        {
                           addr02b4:
                           addr02b2:
                           if(§§pop() != -1)
                           {
                              if(!(_loc8_ && CityTreasuryProxy))
                              {
                                 addr02c6:
                                 §§push(_loc5_);
                                 if(_loc9_ || Boolean(_loc2_))
                                 {
                                    §§goto(addr02d6);
                                 }
                              }
                              else
                              {
                                 §§goto(addr02d7);
                              }
                              §§goto(addr02d9);
                           }
                           §§goto(addr02d7);
                        }
                        §§goto(addr02d6);
                     }
                     §§goto(addr02b4);
                  }
                  §§goto(addr02d7);
               }
               addr012e:
               if(!(_loc8_ && Boolean(_loc2_)))
               {
                  §§push(Boolean(param1.goods));
                  if(_loc9_)
                  {
                     var _temp_12:* = §§pop();
                     §§push(_temp_12);
                     §§push(_temp_12);
                     if(_loc9_)
                     {
                        if(§§pop())
                        {
                           if(_loc9_ || Boolean(_loc3_))
                           {
                              addr016f:
                              §§pop();
                              if(!_loc8_)
                              {
                                 §§push(param1.goods.length > 0);
                                 if(_loc9_)
                                 {
                                    addr0185:
                                    if(§§pop())
                                    {
                                       if(!_loc8_)
                                       {
                                          §§push(0);
                                          if(!_loc8_)
                                          {
                                             _loc6_ = §§pop();
                                             if(!(_loc8_ && Boolean(_loc3_)))
                                             {
                                                §§goto(addr01a7);
                                             }
                                             §§goto(addr0216);
                                          }
                                          else
                                          {
                                             §§goto(addr02b2);
                                          }
                                       }
                                       else
                                       {
                                          addr026a:
                                          §§push(int(resourceCategories.indexOf(param1.resources[0].resourceConfig.type)));
                                          if(!(_loc8_ && Boolean(param1)))
                                          {
                                             §§goto(addr028e);
                                          }
                                       }
                                       addr02d6:
                                       return §§pop();
                                    }
                                    §§push(Boolean(param1.resources));
                                    if(!(_loc8_ && Boolean(_loc2_)))
                                    {
                                       addr0235:
                                       var _temp_17:* = §§pop();
                                       addr0236:
                                       §§push(_temp_17);
                                       if(_temp_17)
                                       {
                                          if(_loc9_ || Boolean(param1))
                                          {
                                             addr0248:
                                             §§pop();
                                             if(_loc9_ || Boolean(_loc2_))
                                             {
                                                addr0260:
                                                addr0257:
                                                if(param1.resources.length > 0)
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      §§goto(addr026a);
                                                   }
                                                   §§goto(addr02c6);
                                                }
                                                §§goto(addr02d7);
                                             }
                                             §§goto(addr026a);
                                          }
                                       }
                                       §§goto(addr0260);
                                    }
                                    §§goto(addr0248);
                                    §§goto(addr026a);
                                 }
                                 §§goto(addr0235);
                              }
                              §§goto(addr02c6);
                           }
                           §§goto(addr0260);
                        }
                        §§goto(addr0185);
                     }
                     §§goto(addr0236);
                  }
                  §§goto(addr016f);
               }
               §§goto(addr0257);
            }
            if(_loc9_)
            {
               §§goto(addr012e);
            }
            §§goto(addr01a7);
         }
         while(true)
         {
            if(!§§pop())
            {
               if(!_loc8_)
               {
                  §§goto(addr0126);
               }
               §§goto(addr0214);
            }
            else
            {
               _loc2_ = §§nextvalue(_loc6_,_loc7_);
               if(_loc9_ || Boolean(_loc3_))
               {
                  §§push(int(starterPackCategories.indexOf(_loc2_.tagName)));
                  if(_loc8_ && Boolean(param1))
                  {
                     break;
                  }
                  _loc3_ = §§pop();
                  if(!_loc8_)
                  {
                     addr00fe:
                     §§push(_loc3_);
                     if(_loc8_)
                     {
                        break;
                     }
                     if(§§pop() != -1)
                     {
                        if(!_loc8_)
                        {
                           §§push(_loc3_);
                           break;
                        }
                     }
                  }
                  §§goto(addr0113);
               }
               §§goto(addr00fe);
            }
            addr020c:
            return §§pop();
         }
         return §§pop();
      }
      
      private static function getCategoryNameOfPack(param1:ConfigPaymentPackDTO) : String
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:ConfigTagDTO = null;
         if(!_loc5_)
         {
            if(param1.type == ServerPaymentPackConst.CURRENCY)
            {
               §§goto(addr002e);
            }
            §§goto(addr00bd);
         }
         addr002e:
         var _loc3_:* = 0;
         var _loc4_:* = param1.configTags;
         loop3:
         while(true)
         {
            §§push(§§hasnext(_loc4_,_loc3_));
            if(!(_loc6_ || CityTreasuryProxy))
            {
               break;
            }
            if(§§pop())
            {
               _loc2_ = §§nextvalue(_loc3_,_loc4_);
               if(_loc6_ || Boolean(_loc3_))
               {
                  §§push(_loc2_.tagName);
                  if(!_loc5_)
                  {
                     if(§§pop() != ServerTagConstants.CLIENT_RESOURCE_REBUY_PACK)
                     {
                        continue;
                     }
                     if(_loc5_ && Boolean(_loc2_))
                     {
                        continue;
                     }
                     return ServerResConst.RESOURCE_REALCURRENCY;
                  }
               }
               continue;
            }
            if(_loc6_ || CityTreasuryProxy)
            {
               if(_loc6_ || Boolean(_loc3_))
               {
                  if(!(_loc5_ && Boolean(_loc3_)))
                  {
                     addr00bd:
                     §§push(0);
                     if(!(_loc5_ && CityTreasuryProxy))
                     {
                        _loc3_ = §§pop();
                        if(_loc6_ || Boolean(_loc3_))
                        {
                           _loc4_ = param1.configTags;
                           while(true)
                           {
                              §§push(§§hasnext(_loc4_,_loc3_));
                              if(!_loc5_)
                              {
                                 break loop3;
                              }
                              §§goto(addr020b);
                           }
                           addr011a:
                        }
                        addr01bf:
                        _loc4_ = param1.goods[0].goodConfig.tagConfigs;
                        §§goto(addr0208);
                     }
                     addr01b0:
                     _loc3_ = §§pop();
                     if(!(_loc5_ && Boolean(param1)))
                     {
                        §§goto(addr01bf);
                     }
                     §§goto(addr0211);
                  }
                  §§goto(addr02a2);
               }
               addr014a:
               if(_loc6_ || Boolean(_loc2_))
               {
                  §§push(Boolean(param1.goods));
                  if(!(_loc5_ && Boolean(param1)))
                  {
                     var _temp_13:* = §§pop();
                     §§push(_temp_13);
                     §§push(_temp_13);
                     if(_loc6_)
                     {
                        if(§§pop())
                        {
                           if(_loc6_)
                           {
                              §§pop();
                              if(!(_loc5_ && Boolean(param1)))
                              {
                                 §§push(param1.goods.length > 0);
                                 if(_loc6_)
                                 {
                                    addr019c:
                                    if(§§pop())
                                    {
                                       if(_loc6_ || Boolean(_loc3_))
                                       {
                                          §§goto(addr01b0);
                                          §§push(0);
                                       }
                                    }
                                    else
                                    {
                                       §§push(Boolean(param1.resources));
                                       if(!(_loc5_ && CityTreasuryProxy))
                                       {
                                          addr0238:
                                          var _temp_17:* = §§pop();
                                          addr0239:
                                          §§push(_temp_17);
                                          if(_temp_17)
                                          {
                                             if(!_loc5_)
                                             {
                                                addr0243:
                                                §§pop();
                                                if(_loc6_)
                                                {
                                                   addr0253:
                                                   if(param1.resources.length > 0)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         addr025d:
                                                         if(resourceCategories.indexOf(param1.resources[0].resourceConfig.type) != -1)
                                                         {
                                                            if(_loc6_ || Boolean(param1))
                                                            {
                                                               return param1.resources[0].resourceConfig.type;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr02a2);
                                                }
                                                §§goto(addr025d);
                                             }
                                          }
                                          §§goto(addr0253);
                                       }
                                       §§goto(addr0243);
                                    }
                                    §§goto(addr02a2);
                                 }
                                 §§goto(addr0243);
                              }
                              §§goto(addr02a2);
                           }
                        }
                        §§goto(addr019c);
                     }
                     §§goto(addr0239);
                  }
                  §§goto(addr0238);
               }
               §§goto(addr025d);
            }
            §§goto(addr020f);
         }
         while(true)
         {
            if(!§§pop())
            {
               if(!(_loc5_ && CityTreasuryProxy))
               {
                  if(_loc6_)
                  {
                     §§goto(addr014a);
                  }
                  §§goto(addr0211);
               }
               §§goto(addr020f);
            }
            else
            {
               _loc2_ = §§nextvalue(_loc3_,_loc4_);
               if(!_loc5_)
               {
                  if(starterPackCategories.indexOf(_loc2_.tagName) != -1)
                  {
                     if(!(_loc5_ && Boolean(_loc2_)))
                     {
                        return _loc2_.tagName;
                     }
                  }
               }
               §§goto(addr011a);
            }
         }
         addr020b:
         while(true)
         {
            if(!§§pop())
            {
               addr0211:
               if(_loc5_ && Boolean(param1))
               {
               }
               addr02a2:
               return "";
               addr020f:
            }
            _loc2_ = §§nextvalue(_loc3_,_loc4_);
            if(!(_loc6_ || Boolean(_loc2_)))
            {
               break;
            }
            if(goodCategories.indexOf(_loc2_.tagName) != -1)
            {
               if(!_loc5_)
               {
                  break;
               }
            }
            while(true)
            {
               §§push(§§hasnext(_loc4_,_loc3_));
               break;
            }
         }
         return _loc2_.tagName;
      }
      
      public static function configToCategory(param1:ConfigPaymentPackDTO) : String
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:ConfigTagDTO = null;
         if(!(_loc6_ && Boolean(param1)))
         {
            if(param1.type == ServerPaymentPackConst.CURRENCY)
            {
               addr0035:
               var _loc3_:int = 0;
               var _loc4_:* = param1.configTags;
               loop3:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(_loc6_ && Boolean(param1))
                  {
                     break;
                  }
                  if(§§pop())
                  {
                     _loc2_ = §§nextvalue(_loc3_,_loc4_);
                     if(_loc7_)
                     {
                        §§push(_loc2_.tagName);
                        if(_loc7_ || Boolean(_loc2_))
                        {
                           if(§§pop() != ServerResConst.RESOURCE_REALCURRENCY)
                           {
                              continue;
                           }
                           if(!_loc7_)
                           {
                              continue;
                           }
                           return CityTreasuryProxy.PAYMENT_CATEGORY_REAL_CURRENCY;
                        }
                     }
                     continue;
                  }
                  if(!(_loc6_ && Boolean(_loc3_)))
                  {
                     if(_loc7_)
                     {
                        if(_loc7_ || Boolean(param1))
                        {
                           addr00b5:
                           _loc3_ = 0;
                           if(_loc7_)
                           {
                              _loc4_ = param1.configTags;
                              while(true)
                              {
                                 §§push(§§hasnext(_loc4_,_loc3_));
                                 break loop3;
                              }
                              addr0331:
                              addr032a:
                           }
                           addr0333:
                        }
                        return "";
                     }
                     §§goto(addr0333);
                  }
                  §§goto(addr0331);
               }
               while(§§pop())
               {
                  _loc2_ = §§nextvalue(_loc3_,_loc4_);
                  if(!(_loc6_ && Boolean(param1)))
                  {
                     §§push(_loc2_.tagName);
                     loop1:
                     while(true)
                     {
                        var _loc5_:* = §§pop();
                        if(_loc7_ || Boolean(param1))
                        {
                           §§push(ServerTagConstants.CLIENT_RESOURCE_REBUY_PACK);
                           if(!(_loc6_ && CityTreasuryProxy))
                           {
                              §§push(_loc5_);
                              if(!_loc6_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!(_loc6_ && Boolean(_loc2_)))
                                    {
                                       §§push(0);
                                       if(_loc6_ && Boolean(_loc3_))
                                       {
                                       }
                                    }
                                    else
                                    {
                                       addr024d:
                                       §§push(3);
                                       if(_loc7_ || Boolean(_loc3_))
                                       {
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(ServerTagConstants.CLIENT_PAYMENT_PACK_STARTER);
                                    if(_loc7_)
                                    {
                                       §§push(_loc5_);
                                       if(_loc7_ || Boolean(_loc3_))
                                       {
                                          addr01c9:
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc7_ || Boolean(_loc3_))
                                             {
                                                §§push(1);
                                                if(_loc7_ || CityTreasuryProxy)
                                                {
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr024d);
                                             }
                                          }
                                          else
                                          {
                                             §§push(ServerTagConstants.CLIENT_PAYMENT_PACK_STUDENT);
                                             if(!(_loc6_ && CityTreasuryProxy))
                                             {
                                                addr0202:
                                                §§push(_loc5_);
                                                if(_loc7_)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         §§push(2);
                                                         if(_loc7_)
                                                         {
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr028e:
                                                         §§push(4);
                                                         if(_loc7_)
                                                         {
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(ServerTagConstants.CLIENT_PAYMENT_PACK_PRODUCTION);
                                                      if(!(_loc6_ && Boolean(_loc2_)))
                                                      {
                                                         §§push(_loc5_);
                                                         if(!_loc6_)
                                                         {
                                                            addr023b:
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!(_loc6_ && CityTreasuryProxy))
                                                               {
                                                                  §§goto(addr024d);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr028e);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(ServerTagConstants.CLIENT_PAYMENT_PACK_FIRST_AID);
                                                               if(!(_loc6_ && CityTreasuryProxy))
                                                               {
                                                                  addr0274:
                                                                  §§push(_loc5_);
                                                                  if(!(_loc6_ && Boolean(_loc2_)))
                                                                  {
                                                                     addr0284:
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§goto(addr028e);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr02bf:
                                                                           §§push(5);
                                                                           if(_loc7_ || Boolean(_loc2_))
                                                                           {
                                                                           }
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(ServerTagConstants.CLIENT_PAYMENT_PACK_GAMBLING);
                                                                        if(_loc7_)
                                                                        {
                                                                           addr02a5:
                                                                           §§push(_loc5_);
                                                                           if(_loc7_)
                                                                           {
                                                                              addr02ad:
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 if(!(_loc6_ && Boolean(_loc2_)))
                                                                                 {
                                                                                    §§goto(addr02bf);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr02eb:
                                                                                    §§push(6);
                                                                                    if(_loc7_ || Boolean(_loc2_))
                                                                                    {
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr030b);
                                                                              }
                                                                              addr02e7:
                                                                              addr02e5:
                                                                              if(ServerTagConstants.CLIENT_PAYMENT_PACK_RENT_COLLECTOR === _loc5_)
                                                                              {
                                                                                 §§goto(addr02eb);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(7);
                                                                              }
                                                                              addr030b:
                                                                              loop5:
                                                                              switch(§§pop())
                                                                              {
                                                                                 case 0:
                                                                                    §§push(CityTreasuryProxy.PAYMENT_CATEGORY_REAL_CURRENCY);
                                                                                    if(!(_loc6_ && Boolean(_loc3_)))
                                                                                    {
                                                                                       return §§pop();
                                                                                    }
                                                                                    break;
                                                                                 case 1:
                                                                                 case 2:
                                                                                 case 3:
                                                                                 case 4:
                                                                                 case 5:
                                                                                    §§push(CityTreasuryProxy.PAYMENT_CATEGORY_STARTER);
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       return §§pop();
                                                                                    }
                                                                                    continue;
                                                                                 case 6:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(CityTreasuryProxy.PAYMENT_CATEGORY_EXTERNAL);
                                                                                       if(!(_loc6_ && Boolean(param1)))
                                                                                       {
                                                                                          break loop5;
                                                                                       }
                                                                                       continue loop1;
                                                                                    }
                                                                                    break;
                                                                                    addr0124:
                                                                                 default:
                                                                                    §§goto(addr032a);
                                                                              }
                                                                              return §§pop();
                                                                              §§goto(addr02eb);
                                                                           }
                                                                           §§goto(addr02e7);
                                                                        }
                                                                        §§goto(addr02e5);
                                                                     }
                                                                     §§goto(addr030b);
                                                                  }
                                                                  §§goto(addr02ad);
                                                               }
                                                               §§goto(addr02e5);
                                                            }
                                                            §§goto(addr030b);
                                                         }
                                                         §§goto(addr0284);
                                                      }
                                                      §§goto(addr0274);
                                                   }
                                                   §§goto(addr030b);
                                                }
                                                §§goto(addr02ad);
                                             }
                                             §§goto(addr02a5);
                                          }
                                          §§goto(addr030b);
                                       }
                                       §§goto(addr023b);
                                    }
                                    §§goto(addr0202);
                                 }
                                 §§goto(addr030b);
                              }
                              §§goto(addr01c9);
                           }
                           §§goto(addr0202);
                        }
                        §§goto(addr02bf);
                     }
                  }
                  §§goto(addr0124);
               }
               §§goto(addr0331);
            }
            §§goto(addr00b5);
         }
         §§goto(addr0035);
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc4_:ConfigPaymentPackDTO = null;
         var _loc5_:ConfigPaymentPackUpsellingDTO = null;
         if(_loc10_ || _loc2_)
         {
            super.onRegister();
         }
         var _loc1_:FlashVarsProxy = facade.retrieveProxy(FlashVarsProxy.NAME) as FlashVarsProxy;
         §§push(_loc1_.paymentURL);
         if(!(_loc11_ && Boolean(_loc1_)))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc11_ && _loc3_))
         {
            this._starterPackPaymentHelper = new PaymentRequestHelper();
            if(!(_loc11_ && _loc2_))
            {
               addr007f:
               this._starterPackPaymentHelper.requestPacksFromPayment(this.allStarterPacks,PAYMENT_CATEGORY_STARTER,_loc2_);
               if(_loc10_)
               {
                  this._realCurrencyPackPaymentHelper = new PaymentRequestHelper();
                  if(!_loc11_)
                  {
                     this._realCurrencyPackPaymentHelper.requestPacksFromPayment(this.allRealCurrencyPacks,PAYMENT_CATEGORY_REAL_CURRENCY,_loc2_);
                     if(_loc10_)
                     {
                        §§goto(addr00ca);
                     }
                  }
                  §§goto(addr0101);
               }
               §§goto(addr00e3);
            }
            addr00ca:
            this._rentCollectorPaymentHelper = new PaymentRequestHelper();
            if(_loc10_ || Boolean(_loc1_))
            {
               addr00e3:
               this._rentCollectorPaymentHelper.requestPacksFromPayment(this.allExternalRentCollectorPacks,PAYMENT_CATEGORY_EXTERNAL,_loc2_);
               if(!(_loc11_ && Boolean(_loc1_)))
               {
                  addr0101:
                  this._upsellPackPaymentHelper = new PaymentRequestHelper();
               }
            }
            var _loc3_:Vector.<ConfigPaymentPackUpsellingDTO> = new Vector.<ConfigPaymentPackUpsellingDTO>();
            for each(_loc4_ in this.configProxy.config.paymentPacks)
            {
               if(_loc10_)
               {
                  var _loc8_:int = 0;
                  if(!(_loc11_ && Boolean(_loc3_)))
                  {
                     for each(_loc5_ in _loc4_.upsellPackages)
                     {
                        if(!_loc11_)
                        {
                           _loc3_.push(_loc5_);
                        }
                     }
                  }
               }
            }
            if(_loc10_)
            {
               this._upsellPackPaymentHelper.requestUpsellPacksFromPayment(_loc3_,PAYMENT_CATEGORY_DEFAULT,_loc2_);
            }
            return;
         }
         §§goto(addr007f);
      }
      
      public function getCityTreasuryContentVo(param1:int, param2:int = 0, param3:int = 0, param4:String = "") : CityTreasuryTabVo
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         §§push(param1);
         if(!(_loc6_ && Boolean(param3)))
         {
            var _loc5_:* = §§pop();
            if(_loc7_)
            {
               §§push(CityTreasuryTabProxy.CURRENCY_TAB_INDEX);
               if(_loc7_)
               {
                  §§push(_loc5_);
                  if(_loc7_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc7_ || Boolean(param1))
                        {
                           §§push(0);
                           if(!_loc7_)
                           {
                              addr0122:
                              §§push(_loc5_);
                              if(!(_loc6_ && Boolean(param1)))
                              {
                                 addr0132:
                                 if(§§pop() === §§pop())
                                 {
                                    if(!(_loc6_ && Boolean(param1)))
                                    {
                                       addr0144:
                                       §§push(2);
                                       if(_loc7_ || Boolean(this))
                                       {
                                       }
                                    }
                                    else
                                    {
                                       addr0176:
                                       §§push(3);
                                       if(_loc6_ && Boolean(param1))
                                       {
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(CityTreasuryTabProxy.SPECIALS_TAB_INDEX);
                                    if(!_loc6_)
                                    {
                                       addr0172:
                                       addr0170:
                                       if(§§pop() === _loc5_)
                                       {
                                          §§goto(addr0176);
                                       }
                                       else
                                       {
                                          §§push(4);
                                       }
                                    }
                                 }
                                 addr0198:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       return this.createCurrencyTabVo(new CityTreasuryTabVo(param2,param3));
                                    case 1:
                                       return this.createGoodContentVo(new CityTreasuryTabVo(param2,param3));
                                    case 2:
                                       return this.createPackContentVo(new CityTreasuryTabVo(param2,param3));
                                    case 3:
                                       return this.createSpecialContentVo(new CityTreasuryTabVo(param2,param3),param4);
                                    default:
                                       return null;
                                 }
                                 addr0196:
                              }
                              §§goto(addr0172);
                           }
                        }
                        else
                        {
                           addr0102:
                           §§push(1);
                           if(_loc6_ && Boolean(param2))
                           {
                              §§goto(addr0122);
                           }
                        }
                        §§goto(addr0196);
                     }
                     else
                     {
                        §§push(CityTreasuryTabProxy.GOODS_TAB_INDEX);
                        if(_loc7_)
                        {
                           §§push(_loc5_);
                           if(!_loc6_)
                           {
                              addr00f0:
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc6_ && Boolean(this)))
                                 {
                                    §§goto(addr0102);
                                 }
                                 §§goto(addr0144);
                              }
                              else
                              {
                                 §§push(CityTreasuryTabProxy.PACKS_TAB_INDEX);
                                 if(_loc7_)
                                 {
                                    §§goto(addr0122);
                                 }
                              }
                              §§goto(addr0170);
                           }
                           §§goto(addr0132);
                        }
                     }
                     §§goto(addr0196);
                  }
                  §§goto(addr00f0);
               }
               §§goto(addr0196);
            }
            §§goto(addr0176);
         }
         §§goto(addr0198);
      }
      
      public function getCategoryIndexByTabAndCategory(param1:int, param2:String) : int
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         §§push(param1);
         if(_loc5_)
         {
            var _loc3_:* = §§pop();
            if(!(_loc4_ && Boolean(param1)))
            {
               §§push(CityTreasuryTabProxy.CURRENCY_TAB_INDEX);
               if(_loc5_ || Boolean(param2))
               {
                  §§push(_loc3_);
                  if(!_loc4_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc4_)
                        {
                           §§push(0);
                           if(_loc5_ || Boolean(param1))
                           {
                           }
                        }
                        else
                        {
                           addr0150:
                           §§push(2);
                           if(_loc4_ && Boolean(this))
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(CityTreasuryTabProxy.GOODS_TAB_INDEX);
                        if(_loc5_)
                        {
                           §§push(_loc3_);
                           if(_loc5_ || Boolean(this))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc4_ && Boolean(param1)))
                                 {
                                    addr0117:
                                    §§push(1);
                                    if(_loc4_)
                                    {
                                       addr0187:
                                       addr0188:
                                       if(§§pop() === _loc3_)
                                       {
                                          addr018c:
                                          §§push(3);
                                          if(_loc5_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          §§push(4);
                                       }
                                    }
                                    §§goto(addr01a4);
                                 }
                                 §§goto(addr018c);
                              }
                              else
                              {
                                 §§push(CityTreasuryTabProxy.PACKS_TAB_INDEX);
                                 if(!_loc4_)
                                 {
                                    §§push(_loc3_);
                                    if(_loc5_ || Boolean(param2))
                                    {
                                       §§goto(addr013e);
                                    }
                                    §§goto(addr0188);
                                 }
                              }
                              §§goto(addr0187);
                           }
                           addr013e:
                           if(§§pop() === §§pop())
                           {
                              if(_loc5_ || _loc3_)
                              {
                                 §§goto(addr0150);
                              }
                              else
                              {
                                 §§goto(addr018c);
                              }
                           }
                           else
                           {
                              §§push(CityTreasuryTabProxy.SPECIALS_TAB_INDEX);
                              if(_loc5_ || Boolean(param2))
                              {
                                 §§goto(addr0187);
                              }
                           }
                           §§goto(addr01a4);
                        }
                     }
                     §§goto(addr01a4);
                  }
                  §§goto(addr013e);
               }
               addr01a4:
               if(_loc5_ || Boolean(param2))
               {
                  addr01b4:
                  switch(§§pop())
                  {
                     case 0:
                        return Math.max(resourceCategories.indexOf(param2),0);
                     case 1:
                        return Math.max(goodCategories.indexOf(param2),0);
                     case 2:
                        return Math.max(starterPackCategories.indexOf(param2),0);
                     case 3:
                        return Math.max(specialCategories.indexOf(param2),0);
                     default:
                        return 0;
                  }
               }
            }
            §§goto(addr0117);
         }
         §§goto(addr01b4);
      }
      
      public function getFirstInternalPackIndexByCategoryAndContent(param1:String, param2:String) : int
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc3_:Vector.<ConfigPaymentPackDTO> = null;
         var _loc4_:ConfigPaymentPackDTO = null;
         var _loc5_:ConfigOutputDTO = null;
         var _loc6_:ConfigOutputDTO = null;
         if(_loc11_)
         {
            if(resourceCategories.indexOf(param1) != -1)
            {
               if(!(_loc12_ && Boolean(_loc3_)))
               {
                  _loc3_ = this.gatherPacks(ServerTagConstants.CLIENT_RESOURCE_REBUY_PACK);
                  if(_loc11_)
                  {
                     §§goto(addr0082);
                  }
                  §§goto(addr008b);
               }
               else
               {
                  addr0074:
                  _loc3_ = this.gatherPacks(ServerTagConstants.CLIENT_ITEM_REBUY_PACK);
               }
            }
            else if(goodCategories.indexOf(param1) != -1)
            {
               §§goto(addr0074);
            }
            addr0082:
            if(_loc3_.length > 0)
            {
               addr008b:
               _loc3_ = this.getPacksByCategory(_loc3_,param1);
               loop0:
               for each(_loc4_ in _loc3_)
               {
                  if(_loc12_ && Boolean(this))
                  {
                     continue;
                  }
                  §§push(0);
                  if(!_loc12_)
                  {
                     var _loc9_:* = §§pop();
                     if(_loc11_ || Boolean(param2))
                     {
                        var _loc10_:* = _loc4_.goods;
                        loop1:
                        while(true)
                        {
                           §§push(§§hasnext(_loc10_,_loc9_));
                           if(_loc12_ && Boolean(param2))
                           {
                              break;
                           }
                           if(!§§pop())
                           {
                              if(_loc11_)
                              {
                                 if(_loc11_)
                                 {
                                    addr0160:
                                    if(!(_loc11_ || Boolean(param2)))
                                    {
                                       continue loop0;
                                    }
                                    _loc9_ = 0;
                                    if(_loc11_)
                                    {
                                       _loc10_ = _loc4_.resources;
                                       while(true)
                                       {
                                          §§push(§§hasnext(_loc10_,_loc9_));
                                          break loop1;
                                       }
                                    }
                                 }
                                 addr01db:
                                 continue loop0;
                              }
                              addr01d9:
                              §§goto(addr01db);
                           }
                           else
                           {
                              _loc5_ = §§nextvalue(_loc9_,_loc10_);
                              §§push(_loc5_.goodConfig);
                              if(!(_loc12_ && Boolean(param1)))
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc12_ && Boolean(this)))
                                    {
                                       addr011e:
                                       if(!_loc5_.goodConfig.isTaggedGoodByTagName(param2))
                                       {
                                          continue;
                                       }
                                       if(_loc12_ && Boolean(param1))
                                       {
                                          continue;
                                       }
                                    }
                                    return _loc3_.indexOf(_loc4_);
                                 }
                                 continue;
                              }
                              §§goto(addr011e);
                           }
                        }
                        for(; §§pop(); §§push(§§hasnext(_loc10_,_loc9_)))
                        {
                           _loc6_ = §§nextvalue(_loc9_,_loc10_);
                           §§push(_loc6_.resourceConfig);
                           if(!_loc12_)
                           {
                              if(!§§pop())
                              {
                                 continue;
                              }
                              if(!(_loc11_ || Boolean(param1)))
                              {
                                 continue;
                              }
                              §§push(_loc6_.resourceConfig);
                           }
                           if(§§pop().type == param2)
                           {
                              if(_loc11_)
                              {
                                 return _loc3_.indexOf(_loc4_);
                              }
                           }
                        }
                        §§goto(addr01d9);
                     }
                     §§goto(addr0160);
                  }
                  §§goto(addr0172);
               }
            }
            return 0;
         }
         §§goto(addr0074);
      }
      
      private function createCurrencyTabVo(param1:CityTreasuryTabVo) : CityTreasuryTabVo
      {
         var _temp_1:* = true;
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = _temp_1;
         var _loc4_:CityTreasuryCategoryVo = null;
         var _loc5_:CategoryMenuListVo = null;
         var _loc6_:ICityTreasuryContentVo = null;
         var _loc7_:CityTreasuryInternalPackVo = null;
         var _loc8_:CityTreasuryRealCurrencyPackVo = null;
         var _loc10_:String = null;
         var _loc11_:* = null;
         var _loc2_:Vector.<ConfigPaymentPackDTO> = this.gatherPacks(ServerTagConstants.CLIENT_RESOURCE_REBUY_PACK);
         var _loc3_:Vector.<CityTreasuryCategoryVo> = new Vector.<CityTreasuryCategoryVo>();
         var _loc9_:int = 0;
         loop0:
         for each(_loc10_ in resourceCategories)
         {
            _loc4_ = new CityTreasuryCategoryVo();
            _loc4_.currentRCStock = this.resourceProxy.realCurrency;
            _loc5_ = new CategoryMenuListVo();
            if(_loc16_ || Boolean(_loc3_))
            {
               §§push(this.getIcon(CityTreasuryTabProxy.CURRENCY_TAB_INDEX,_loc9_));
               if(_loc16_ || Boolean(this))
               {
                  §§push(§§pop());
                  if(_loc16_ || Boolean(this))
                  {
                     _loc11_ = §§pop();
                     §§push(_loc11_);
                     if(!_loc15_)
                     {
                        addr00d5:
                        if(§§pop())
                        {
                           if(_loc16_ || Boolean(param1))
                           {
                              addr00e7:
                              §§push(_loc11_);
                              if(!(_loc15_ && Boolean(param1)))
                              {
                                 addr00f7:
                                 _loc11_ = §§pop() + "_small";
                                 if(_loc16_)
                                 {
                                    addr03be:
                                    §§push(_loc10_);
                                    loop1:
                                    while(true)
                                    {
                                       var _loc14_:* = §§pop();
                                       if(_loc16_ || Boolean(_loc3_))
                                       {
                                          §§push(ServerResConst.RESOURCE_REALCURRENCY);
                                          if(_loc16_)
                                          {
                                             §§push(_loc14_);
                                             if(_loc16_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!(_loc15_ && Boolean(param1)))
                                                   {
                                                      §§push(0);
                                                      if(_loc16_)
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr047e:
                                                      §§push(3);
                                                      if(_loc16_)
                                                      {
                                                      }
                                                   }
                                                   addr0496:
                                                   switch(§§pop())
                                                   {
                                                      case 0:
                                                         §§push(_loc11_);
                                                         if(!_loc15_)
                                                         {
                                                            if(§§pop() == null)
                                                            {
                                                               if(_loc16_)
                                                               {
                                                                  addr011b:
                                                                  _loc5_.categoryIcon = new BriskDynaVo("gui_popups_goodRebuyPopup","cat_icon_realCurrency");
                                                                  if(!(_loc15_ && Boolean(_loc2_)))
                                                                  {
                                                                     addr0153:
                                                                     _loc5_.categoryName = LocaUtils.getString("rcl.booklayer.currencyrebuy","rcl.booklayer.currencyrebuy.realcurrency.categoryentry");
                                                                     if(_loc15_)
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                                  _loc8_ = new CityTreasuryRealCurrencyPackVo();
                                                                  _loc8_.packs = this.getRealCurrencyPacks(_loc2_,CityTreasuryTabProxy.CURRENCY_TAB_INDEX,_loc9_,_loc10_);
                                                                  _loc6_ = _loc8_;
                                                                  if(!(_loc15_ && Boolean(_loc3_)))
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               _loc5_.categoryIcon = new BriskDynaVo("gui_popups_paperPopup",_loc11_);
                                                               if(!_loc16_)
                                                               {
                                                                  break;
                                                               }
                                                            }
                                                            §§goto(addr0153);
                                                         }
                                                         continue;
                                                      case 1:
                                                         if(_loc11_ == null)
                                                         {
                                                            if(_loc16_ || Boolean(_loc3_))
                                                            {
                                                               _loc5_.categoryIcon = new BriskDynaVo("gui_popups_goodRebuyPopup","cat_icon_virtualCurrency");
                                                               if(!_loc15_)
                                                               {
                                                                  addr01ea:
                                                                  _loc5_.categoryName = LocaUtils.getString("rcl.booklayer.currencyrebuy","rcl.booklayer.currencyrebuy.virtualcurrency.categoryentry");
                                                                  if(_loc15_)
                                                                  {
                                                                     break loop1;
                                                                  }
                                                               }
                                                               _loc7_ = new CityTreasuryInternalPackVo();
                                                               _loc7_.categoryId = _loc10_;
                                                               if(_loc16_ || Boolean(this))
                                                               {
                                                                  _loc7_.packs = this.getInternalPacks(_loc2_,CityTreasuryTabProxy.CURRENCY_TAB_INDEX,_loc9_,_loc10_);
                                                               }
                                                               _loc6_ = _loc7_;
                                                               if(!_loc15_)
                                                               {
                                                                  break;
                                                               }
                                                               addr0294:
                                                               _loc5_.categoryName = LocaUtils.getString("rcl.booklayer.currencyrebuy","rcl.booklayer.currencyrebuy.productionpoints.categoryentry");
                                                               addr02a5:
                                                               _loc7_ = new CityTreasuryInternalPackVo();
                                                               _loc7_.categoryId = _loc10_;
                                                               if(_loc16_ || Boolean(this))
                                                               {
                                                                  _loc7_.packs = this.getInternalPacks(_loc2_,CityTreasuryTabProxy.CURRENCY_TAB_INDEX,_loc9_,_loc10_);
                                                               }
                                                               _loc6_ = _loc7_;
                                                               if(!(_loc15_ && Boolean(_loc2_)))
                                                               {
                                                                  break;
                                                               }
                                                               addr0358:
                                                               §§push(_loc5_);
                                                               §§push(this.featureProxy.isResourceUnlocked(ServerResConst.RESOURCE_EDUCATIONPOINTS));
                                                               if(!(_loc15_ && Boolean(_loc2_)))
                                                               {
                                                                  §§push(!§§pop());
                                                               }
                                                               §§pop().disabled = §§pop();
                                                               addr0379:
                                                               _loc7_ = new CityTreasuryInternalPackVo();
                                                               _loc7_.categoryId = _loc10_;
                                                               if(_loc16_ || Boolean(_loc3_))
                                                               {
                                                                  _loc7_.packs = this.getInternalPacks(_loc2_,CityTreasuryTabProxy.CURRENCY_TAB_INDEX,_loc9_,_loc10_);
                                                               }
                                                               _loc6_ = _loc7_;
                                                               break;
                                                            }
                                                            addr04ce:
                                                            _loc3_.push(_loc4_);
                                                            if(!_loc15_)
                                                            {
                                                               break loop1;
                                                            }
                                                            continue loop0;
                                                         }
                                                         _loc5_.categoryIcon = new BriskDynaVo("gui_popups_paperPopup",_loc11_);
                                                         if(!_loc16_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         §§goto(addr01ea);
                                                      case 2:
                                                         if(_loc11_ == null)
                                                         {
                                                            if(!_loc15_)
                                                            {
                                                               _loc5_.categoryIcon = new BriskDynaVo("gui_popups_goodRebuyPopup","cat_icon_productionPoints");
                                                               if(_loc16_)
                                                               {
                                                                  §§goto(addr0294);
                                                               }
                                                               §§goto(addr02a5);
                                                            }
                                                            §§goto(addr0294);
                                                         }
                                                         else
                                                         {
                                                            _loc5_.categoryIcon = new BriskDynaVo("gui_popups_paperPopup",_loc11_);
                                                            if(_loc16_)
                                                            {
                                                               §§goto(addr0294);
                                                            }
                                                         }
                                                         §§goto(addr02a5);
                                                      case 3:
                                                         if(_loc11_ == null)
                                                         {
                                                            if(_loc16_)
                                                            {
                                                               _loc5_.categoryIcon = new BriskDynaVo("gui_popups_goodRebuyPopup","cat_icon_educationPoints");
                                                               if(_loc16_ || Boolean(param1))
                                                               {
                                                               }
                                                            }
                                                            addr0339:
                                                            _loc5_.categoryName = LocaUtils.getString("rcl.booklayer.currencyrebuy","rcl.booklayer.currencyrebuy.educationpoints.categoryentry");
                                                            if(!(_loc15_ && Boolean(this)))
                                                            {
                                                               §§goto(addr0358);
                                                            }
                                                            §§goto(addr0379);
                                                         }
                                                         else
                                                         {
                                                            _loc5_.categoryIcon = new BriskDynaVo("gui_popups_paperPopup",_loc11_);
                                                            if(_loc16_)
                                                            {
                                                               §§goto(addr0339);
                                                            }
                                                         }
                                                         §§goto(addr0358);
                                                   }
                                                   _loc4_.categoryMenu = _loc5_;
                                                   if(_loc16_ || Boolean(_loc2_))
                                                   {
                                                      _loc4_.contentVo = _loc6_;
                                                      if(_loc15_)
                                                      {
                                                         continue loop0;
                                                      }
                                                   }
                                                   §§goto(addr04ce);
                                                }
                                                else
                                                {
                                                   §§push(ServerResConst.RESOURCE_VIRTUALCURRENCY);
                                                   if(!(_loc15_ && Boolean(param1)))
                                                   {
                                                      §§push(_loc14_);
                                                      if(!(_loc15_ && Boolean(_loc2_)))
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc16_)
                                                            {
                                                               addr042e:
                                                               §§push(1);
                                                               if(_loc15_ && Boolean(this))
                                                               {
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr047e);
                                                            }
                                                            §§goto(addr0496);
                                                         }
                                                         else
                                                         {
                                                            §§push(ServerResConst.RESOURCE_PRODUCTIONPOINTS);
                                                            if(_loc16_)
                                                            {
                                                               addr044d:
                                                               §§push(_loc14_);
                                                               if(_loc16_ || Boolean(this))
                                                               {
                                                                  addr045d:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(_loc16_)
                                                                     {
                                                                        §§push(2);
                                                                        if(_loc15_)
                                                                        {
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr047e);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr047a:
                                                                     addr0478:
                                                                     if(ServerResConst.RESOURCE_EDUCATIONPOINTS === _loc14_)
                                                                     {
                                                                        §§goto(addr047e);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(4);
                                                                     }
                                                                  }
                                                                  §§goto(addr0496);
                                                               }
                                                               §§goto(addr047a);
                                                            }
                                                            §§goto(addr0478);
                                                         }
                                                      }
                                                      §§goto(addr045d);
                                                   }
                                                   §§goto(addr044d);
                                                }
                                             }
                                             §§goto(addr047a);
                                          }
                                          §§goto(addr044d);
                                       }
                                       §§goto(addr042e);
                                    }
                                    _loc9_++;
                                    continue;
                                    addr03c0:
                                 }
                                 §§goto(addr011b);
                              }
                              §§goto(addr0110);
                           }
                           §§goto(addr0153);
                        }
                        §§goto(addr03be);
                     }
                     §§goto(addr03c0);
                  }
                  §§goto(addr00f7);
               }
               §§goto(addr00d5);
            }
            §§goto(addr00e7);
         }
         if(_loc16_)
         {
            param1.categories = _loc3_;
            if(_loc16_ || Boolean(param1))
            {
               addr050e:
               param1.flavourText = LocaUtils.getString("rcl.booklayer.currencyrebuy","rcl.booklayer.currencyrebuy.layer.flavor");
            }
            return param1;
         }
         §§goto(addr050e);
      }
      
      private function createGoodContentVo(param1:CityTreasuryTabVo) : CityTreasuryTabVo
      {
         var _temp_1:* = true;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = _temp_1;
         var _loc4_:CityTreasuryCategoryVo = null;
         var _loc5_:CategoryMenuListVo = null;
         var _loc6_:CityTreasuryInternalPackVo = null;
         var _loc8_:String = null;
         var _loc9_:* = null;
         var _loc2_:Vector.<ConfigPaymentPackDTO> = this.gatherPacks(ServerTagConstants.CLIENT_ITEM_REBUY_PACK);
         var _loc3_:Vector.<CityTreasuryCategoryVo> = new Vector.<CityTreasuryCategoryVo>();
         var _loc7_:int = 0;
         loop0:
         for each(_loc8_ in goodCategories)
         {
            _loc4_ = new CityTreasuryCategoryVo();
            _loc4_.currentRCStock = this.resourceProxy.realCurrency;
            _loc5_ = new CategoryMenuListVo();
            _loc6_ = new CityTreasuryInternalPackVo();
            _loc6_.categoryId = _loc8_;
            if(_loc14_ || Boolean(_loc2_))
            {
               _loc6_.packs = this.getInternalPacks(_loc2_,CityTreasuryTabProxy.GOODS_TAB_INDEX,_loc7_,_loc8_);
               if(_loc14_ || Boolean(_loc2_))
               {
                  §§push(this.getIcon(CityTreasuryTabProxy.GOODS_TAB_INDEX,_loc7_));
                  if(_loc14_)
                  {
                     §§push(§§pop());
                     if(!_loc13_)
                     {
                        _loc9_ = §§pop();
                        if(_loc14_ || Boolean(_loc3_))
                        {
                           _loc7_++;
                           if(_loc14_)
                           {
                              §§push(_loc9_);
                              if(!(_loc13_ && Boolean(_loc2_)))
                              {
                                 addr010e:
                                 if(§§pop())
                                 {
                                    if(_loc14_ || Boolean(_loc3_))
                                    {
                                       §§push(_loc9_);
                                       if(_loc14_ || Boolean(_loc3_))
                                       {
                                          _loc9_ = §§pop() + "_small";
                                          if(!_loc13_)
                                          {
                                             addr037a:
                                             §§push(_loc8_);
                                             loop1:
                                             while(true)
                                             {
                                                var _loc12_:* = §§pop();
                                                if(_loc14_ || Boolean(_loc3_))
                                                {
                                                   §§push(ServerTagConstants.GOOD_KEY);
                                                   if(!(_loc13_ && Boolean(this)))
                                                   {
                                                      §§push(_loc12_);
                                                      if(_loc14_ || Boolean(this))
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc14_ || Boolean(_loc3_))
                                                            {
                                                               §§push(0);
                                                               if(_loc14_)
                                                               {
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr043a:
                                                               §§push(3);
                                                               if(_loc14_)
                                                               {
                                                               }
                                                            }
                                                            addr0452:
                                                            switch(§§pop())
                                                            {
                                                               case 0:
                                                                  §§push(_loc9_);
                                                                  if(!_loc13_)
                                                                  {
                                                                     §§push(null);
                                                                     if(_loc13_ && Boolean(_loc2_))
                                                                     {
                                                                        addr020f:
                                                                        if(§§pop() == §§pop())
                                                                        {
                                                                           if(_loc13_ && Boolean(_loc3_))
                                                                           {
                                                                              addr0322:
                                                                              _loc5_.categoryIcon = new BriskDynaVo("gui_popups_goodRebuyPopup","cat_icon_granite");
                                                                              if(_loc13_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              addr035a:
                                                                              _loc5_.categoryName = LocaUtils.getString("rcl.goods.goodname","rcl.goods.goodname.60006");
                                                                              if(!_loc13_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                           _loc5_.categoryIcon = new BriskDynaVo("gui_popups_goodRebuyPopup","cat_icon_dextro");
                                                                           if(_loc14_ || Boolean(_loc3_))
                                                                           {
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           _loc5_.categoryIcon = new BriskDynaVo("gui_popups_paperPopup",_loc9_);
                                                                           if(_loc13_ && Boolean(_loc3_))
                                                                           {
                                                                              addr02eb:
                                                                              _loc5_.categoryName = LocaUtils.getString("rcl.booklayer.goodrebuy","rcl.booklayer.goodrebuy.category.wheelToken");
                                                                              if(!(_loc13_ && Boolean(_loc2_)))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              addr048b:
                                                                              _loc4_.contentVo = _loc6_;
                                                                              if(!(_loc13_ && Boolean(param1)))
                                                                              {
                                                                                 break loop1;
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                        }
                                                                        _loc5_.categoryName = LocaUtils.getString("rcl.goods.goodname","rcl.goods.goodname.60027");
                                                                        if(_loc13_)
                                                                        {
                                                                        }
                                                                        break;
                                                                     }
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        if(_loc13_ && Boolean(this))
                                                                        {
                                                                           break loop1;
                                                                        }
                                                                        _loc5_.categoryIcon = new BriskDynaVo("gui_popups_goodRebuyPopup","cat_icon_key");
                                                                        if(_loc13_ && Boolean(_loc3_))
                                                                        {
                                                                           break;
                                                                        }
                                                                        addr01aa:
                                                                        _loc5_.categoryName = LocaUtils.getString("rcl.goods.goodname","rcl.goods.goodname.60021");
                                                                        if(_loc13_ && Boolean(_loc3_))
                                                                        {
                                                                           break loop1;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        _loc5_.categoryIcon = new BriskDynaVo("gui_popups_paperPopup",_loc9_);
                                                                        if(!(_loc13_ && Boolean(_loc3_)))
                                                                        {
                                                                           §§goto(addr01aa);
                                                                        }
                                                                     }
                                                                     §§push(_loc5_);
                                                                     §§push(this.featureProxy.residentChangeUnlocked);
                                                                     if(!(_loc13_ && Boolean(_loc2_)))
                                                                     {
                                                                        §§push(!§§pop());
                                                                     }
                                                                     §§pop().disabled = §§pop();
                                                                     if(_loc14_)
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr0200:
                                                                     §§push(null);
                                                                     if(!(_loc13_ && Boolean(_loc2_)))
                                                                     {
                                                                        §§goto(addr020f);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr02a1:
                                                                        if(§§pop() == §§pop())
                                                                        {
                                                                           if(_loc13_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           _loc5_.categoryIcon = new BriskDynaVo("gui_popups_goodRebuyPopup","cat_icon_wheel_token");
                                                                           if(_loc13_ && Boolean(_loc2_))
                                                                           {
                                                                              break;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           _loc5_.categoryIcon = new BriskDynaVo("gui_popups_paperPopup",_loc9_);
                                                                           if(_loc13_ && Boolean(_loc2_))
                                                                           {
                                                                              break;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr02eb);
                                                               case 1:
                                                                  §§push(_loc9_);
                                                                  if(_loc14_ || Boolean(param1))
                                                                  {
                                                                     §§goto(addr0200);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr0317:
                                                                     addr0318:
                                                                     if(§§pop() == null)
                                                                     {
                                                                        if(_loc13_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr0322);
                                                                     }
                                                                     else
                                                                     {
                                                                        _loc5_.categoryIcon = new BriskDynaVo("gui_popups_paperPopup",_loc9_);
                                                                        if(!(_loc14_ || Boolean(_loc2_)))
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr035a);
                                                               case 2:
                                                                  §§push(_loc9_);
                                                                  if(!_loc13_)
                                                                  {
                                                                     addr0292:
                                                                     §§push(null);
                                                                     if(_loc14_ || Boolean(param1))
                                                                     {
                                                                        §§goto(addr02a1);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr0317);
                                                                  }
                                                                  §§goto(addr0318);
                                                               case 3:
                                                                  §§push(_loc9_);
                                                                  if(_loc13_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§goto(addr0317);
                                                            }
                                                            addr0476:
                                                            _loc4_.categoryMenu = _loc5_;
                                                            if(_loc13_ && Boolean(_loc2_))
                                                            {
                                                               break;
                                                            }
                                                            §§goto(addr048b);
                                                         }
                                                         else
                                                         {
                                                            §§push(ServerTagConstants.GOOD_DEXTRO);
                                                            if(!_loc13_)
                                                            {
                                                               §§push(_loc12_);
                                                               if(_loc14_)
                                                               {
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!_loc13_)
                                                                     {
                                                                        §§push(1);
                                                                        if(_loc14_)
                                                                        {
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr043a);
                                                                     }
                                                                     §§goto(addr0452);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(ServerTagConstants.CLIENT_GOOD_WHEEL_TOKEN);
                                                                     if(_loc14_ || Boolean(_loc3_))
                                                                     {
                                                                        addr0409:
                                                                        §§push(_loc12_);
                                                                        if(!(_loc13_ && Boolean(_loc3_)))
                                                                        {
                                                                           addr0419:
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(!_loc13_)
                                                                              {
                                                                                 §§push(2);
                                                                                 if(_loc14_)
                                                                                 {
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr043a);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr0436:
                                                                              addr0434:
                                                                              if(ServerTagConstants.CLIENT_GOOD_GRANITE === _loc12_)
                                                                              {
                                                                                 §§goto(addr043a);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(4);
                                                                              }
                                                                           }
                                                                           §§goto(addr0452);
                                                                        }
                                                                        §§goto(addr0436);
                                                                     }
                                                                     §§goto(addr0434);
                                                                  }
                                                               }
                                                               §§goto(addr0419);
                                                            }
                                                            §§goto(addr0434);
                                                         }
                                                      }
                                                      §§goto(addr0436);
                                                   }
                                                   §§goto(addr0409);
                                                }
                                                §§goto(addr043a);
                                             }
                                             addr04ac:
                                             _loc3_.push(_loc4_);
                                             continue;
                                          }
                                          §§goto(addr0476);
                                       }
                                       §§goto(addr0200);
                                    }
                                    §§goto(addr01aa);
                                 }
                                 §§goto(addr037a);
                              }
                              §§goto(addr0292);
                           }
                           §§goto(addr048b);
                        }
                        §§goto(addr04ac);
                     }
                     §§goto(addr010e);
                  }
                  §§goto(addr0200);
               }
               §§goto(addr0221);
            }
            §§goto(addr04ac);
         }
         if(!_loc13_)
         {
            param1.categories = _loc3_;
            if(!_loc13_)
            {
               addr04ce:
               param1.flavourText = LocaUtils.getString("rcl.booklayer.goodrebuy","rcl.booklayer.goodrebuy.layer.flavor");
            }
            return param1;
         }
         §§goto(addr04ce);
      }
      
      private function createPackContentVo(param1:CityTreasuryTabVo) : CityTreasuryTabVo
      {
         §§push(false);
         var _loc17_:Boolean = true;
         var _loc18_:* = §§pop();
         var _loc3_:CityTreasuryCategoryVo = null;
         var _loc4_:CategoryMenuListVo = null;
         var _loc5_:CityTreasuryExternalPackVo = null;
         var _loc6_:ExternalPaymentPackInfoVo = null;
         var _loc8_:String = null;
         var _loc9_:* = null;
         var _loc10_:PlayerPaymentUpsellDTO = null;
         var _loc11_:* = null;
         var _loc12_:ConfigPaymentPackUpsellingDTO = null;
         var _loc2_:Vector.<CityTreasuryCategoryVo> = new Vector.<CityTreasuryCategoryVo>();
         var _loc7_:int = 0;
         loop0:
         for each(_loc8_ in starterPackCategories)
         {
            _loc3_ = new CityTreasuryCategoryVo();
            if(!(_loc18_ && Boolean(_loc2_)))
            {
               _loc3_.currentRCStock = this.resourceProxy.realCurrency;
            }
            _loc4_ = new CategoryMenuListVo();
            _loc5_ = new CityTreasuryExternalPackVo();
            if(_loc17_ || Boolean(_loc3_))
            {
               §§push(this.getIcon(CityTreasuryTabProxy.PACKS_TAB_INDEX,_loc7_));
               if(!_loc18_)
               {
                  §§push(§§pop());
                  if(!_loc18_)
                  {
                     addr00d1:
                     _loc9_ = §§pop();
                     if(!(_loc18_ && Boolean(this)))
                     {
                        _loc7_++;
                        if(_loc17_ || Boolean(this))
                        {
                           if(this.gatherPacks(_loc8_).length > 0)
                           {
                              if(_loc17_)
                              {
                                 _loc5_.pack = this.gatherPacks(_loc8_)[0];
                                 if(_loc17_)
                                 {
                                    _loc6_ = this._starterPackPaymentHelper.paymentDictionary[_loc5_.pack.id];
                                    if(_loc6_)
                                    {
                                       if(!(_loc18_ && Boolean(_loc2_)))
                                       {
                                          _loc5_.price = _loc6_.price;
                                          if(_loc17_ || Boolean(_loc2_))
                                          {
                                             addr015e:
                                             _loc5_.currency = _loc6_.currencyAsSymbol;
                                             if(!_loc18_)
                                             {
                                                addr016e:
                                                _loc5_.icon = _loc9_;
                                             }
                                          }
                                          _loc10_ = this.playerProxy.player.playerPaymentPackInfo.upsellPaymentPack;
                                          §§push(Boolean(_loc10_));
                                          if(_loc17_ || Boolean(param1))
                                          {
                                             var _temp_10:* = §§pop();
                                             §§push(_temp_10);
                                             if(_temp_10)
                                             {
                                                if(!_loc18_)
                                                {
                                                   §§pop();
                                                   if(_loc17_ || Boolean(this))
                                                   {
                                                      addr01bf:
                                                      §§push(this.upsellingActive(_loc10_));
                                                      if(!_loc18_)
                                                      {
                                                         addr01be:
                                                         §§push(§§pop());
                                                      }
                                                      if(§§pop())
                                                      {
                                                         if(_loc17_ || Boolean(param1))
                                                         {
                                                            if(_loc10_.id == _loc5_.pack.id)
                                                            {
                                                               if(!(_loc18_ && Boolean(this)))
                                                               {
                                                                  _loc11_ = "";
                                                               }
                                                               addr01f2:
                                                               for each(_loc12_ in _loc5_.pack.upsellPackages)
                                                               {
                                                                  §§push(_loc12_.category);
                                                                  if(_loc17_ || Boolean(this))
                                                                  {
                                                                     if(§§pop() == _loc10_.type)
                                                                     {
                                                                        if(_loc17_ || Boolean(_loc2_))
                                                                        {
                                                                           §§push(_loc12_.key);
                                                                           if(!_loc18_)
                                                                           {
                                                                              addr0243:
                                                                              §§push(§§pop());
                                                                           }
                                                                           _loc11_ = §§pop();
                                                                        }
                                                                        break;
                                                                     }
                                                                     continue;
                                                                  }
                                                                  §§goto(addr0243);
                                                               }
                                                               if(_loc17_ || Boolean(_loc2_))
                                                               {
                                                                  §§push(this._upsellPackPaymentHelper);
                                                                  if(!_loc18_)
                                                                  {
                                                                     §§push(Boolean(§§pop().paymentDictionary));
                                                                     if(!_loc18_)
                                                                     {
                                                                        var _temp_18:* = §§pop();
                                                                        §§push(_temp_18);
                                                                        if(_temp_18)
                                                                        {
                                                                           if(_loc17_)
                                                                           {
                                                                              §§pop();
                                                                              if(!_loc18_)
                                                                              {
                                                                                 addr0296:
                                                                                 addr028d:
                                                                                 if(Boolean(this._upsellPackPaymentHelper.paymentDictionary[_loc11_]))
                                                                                 {
                                                                                    if(!(_loc18_ && Boolean(_loc3_)))
                                                                                    {
                                                                                       addr02a8:
                                                                                       _loc5_.discountedPrice = this._upsellPackPaymentHelper.paymentDictionary[_loc11_].price;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr02bd:
                                                                              §§push(_loc9_);
                                                                              if(_loc17_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc17_ || Boolean(_loc3_))
                                                                                    {
                                                                                       §§push(_loc9_);
                                                                                       if(_loc17_)
                                                                                       {
                                                                                          addr02df:
                                                                                          _loc9_ = §§pop() + "_small";
                                                                                          if(!_loc18_)
                                                                                          {
                                                                                             addr0552:
                                                                                             §§push(_loc8_);
                                                                                             loop1:
                                                                                             while(true)
                                                                                             {
                                                                                                var _loc15_:* = §§pop();
                                                                                                if(!(_loc18_ && Boolean(_loc2_)))
                                                                                                {
                                                                                                   §§push(ServerTagConstants.CLIENT_PAYMENT_PACK_STARTER);
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      §§push(_loc15_);
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         if(§§pop() === §§pop())
                                                                                                         {
                                                                                                            if(!_loc18_)
                                                                                                            {
                                                                                                               §§push(0);
                                                                                                               if(_loc17_ || Boolean(param1))
                                                                                                               {
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr063b:
                                                                                                               §§push(4);
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                               }
                                                                                                            }
                                                                                                            addr0653:
                                                                                                            switch(§§pop())
                                                                                                            {
                                                                                                               case 0:
                                                                                                                  §§push(_loc9_);
                                                                                                                  if(_loc17_ || Boolean(this))
                                                                                                                  {
                                                                                                                     §§push(null);
                                                                                                                     if(_loc17_)
                                                                                                                     {
                                                                                                                        if(§§pop() == §§pop())
                                                                                                                        {
                                                                                                                           if(_loc17_)
                                                                                                                           {
                                                                                                                              _loc4_.categoryIcon = new BriskDynaVo("gui_popups_goodRebuyPopup","cat_icon_starterPack");
                                                                                                                              if(_loc17_)
                                                                                                                              {
                                                                                                                                 addr034c:
                                                                                                                                 _loc4_.categoryName = LocaUtils.getString("rcl.booklayer.startpackbuy","rcl.booklayer.startpackbuy.starter.categoryentry");
                                                                                                                                 if(_loc17_ || Boolean(_loc3_))
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr0436:
                                                                                                                                 _loc4_.categoryName = LocaUtils.getString("rcl.booklayer.startpackbuy","rcl.booklayer.startpackbuy.production.categoryentry");
                                                                                                                                 if(!_loc18_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 addr0473:
                                                                                                                                 _loc4_.categoryIcon = new BriskDynaVo("gui_popups_goodRebuyPopup","cat_icon_emergencyPack");
                                                                                                                                 if(!_loc17_)
                                                                                                                                 {
                                                                                                                                    continue loop0;
                                                                                                                                 }
                                                                                                                                 addr04ab:
                                                                                                                                 _loc4_.categoryName = LocaUtils.getString("rcl.booklayer.startpackbuy","rcl.booklayer.startpackbuy.emergency.categoryentry");
                                                                                                                                 if(!(_loc18_ && Boolean(this)))
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           _loc4_.categoryIcon = new BriskDynaVo("gui_popups_paperPopup",_loc9_);
                                                                                                                           if(_loc17_)
                                                                                                                           {
                                                                                                                              §§goto(addr034c);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr052a:
                                                                                                                        _loc4_.categoryName = LocaUtils.getString("rcl.booklayer.startpackbuy","rcl.booklayer.startpackbuy.gambling.categoryentry");
                                                                                                                        if(_loc18_ && Boolean(this))
                                                                                                                        {
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     addr03fc:
                                                                                                                     if(§§pop() == §§pop())
                                                                                                                     {
                                                                                                                        if(_loc18_)
                                                                                                                        {
                                                                                                                           break loop1;
                                                                                                                        }
                                                                                                                        _loc4_.categoryIcon = new BriskDynaVo("gui_popups_goodRebuyPopup","cat_icon_productionPack");
                                                                                                                        if(_loc18_)
                                                                                                                        {
                                                                                                                           break loop1;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        _loc4_.categoryIcon = new BriskDynaVo("gui_popups_paperPopup",_loc9_);
                                                                                                                        if(!_loc17_)
                                                                                                                        {
                                                                                                                           break loop1;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr0436);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr03f5:
                                                                                                                     §§push(null);
                                                                                                                     if(_loc17_)
                                                                                                                     {
                                                                                                                        §§goto(addr03fc);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr04e0:
                                                                                                                        if(§§pop() == §§pop())
                                                                                                                        {
                                                                                                                           if(_loc18_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           _loc4_.categoryIcon = new BriskDynaVo("gui_popups_goodRebuyPopup","cat_icon_gamblingPack");
                                                                                                                           if(!(_loc17_ || Boolean(this)))
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           _loc4_.categoryIcon = new BriskDynaVo("gui_popups_paperPopup",_loc9_);
                                                                                                                           if(!(_loc17_ || Boolean(_loc2_)))
                                                                                                                           {
                                                                                                                              continue loop0;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr052a);
                                                                                                                  }
                                                                                                               case 1:
                                                                                                                  §§push(_loc9_);
                                                                                                                  if(!_loc18_)
                                                                                                                  {
                                                                                                                     §§push(null);
                                                                                                                     if(!_loc18_)
                                                                                                                     {
                                                                                                                        if(§§pop() == §§pop())
                                                                                                                        {
                                                                                                                           if(!(_loc17_ || Boolean(_loc3_)))
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           _loc4_.categoryIcon = new BriskDynaVo("gui_popups_goodRebuyPopup","cat_icon_studentPack");
                                                                                                                           if(!_loc18_)
                                                                                                                           {
                                                                                                                              addr03c1:
                                                                                                                              _loc4_.categoryName = LocaUtils.getString("rcl.booklayer.startpackbuy","rcl.booklayer.startpackbuy.student.categoryentry");
                                                                                                                              if(!(_loc18_ && Boolean(param1)))
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr0436);
                                                                                                                           }
                                                                                                                           §§goto(addr04ab);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           _loc4_.categoryIcon = new BriskDynaVo("gui_popups_paperPopup",_loc9_);
                                                                                                                           if(!_loc18_)
                                                                                                                           {
                                                                                                                              §§goto(addr03c1);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr0436);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr0436);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr0461:
                                                                                                                        if(§§pop() != §§pop())
                                                                                                                        {
                                                                                                                           _loc4_.categoryIcon = new BriskDynaVo("gui_popups_paperPopup",_loc9_);
                                                                                                                           if(!(_loc18_ && Boolean(param1)))
                                                                                                                           {
                                                                                                                              §§goto(addr04ab);
                                                                                                                           }
                                                                                                                           addr0686:
                                                                                                                           _loc3_.contentVo = _loc5_;
                                                                                                                           if(!(_loc18_ && Boolean(_loc3_)))
                                                                                                                           {
                                                                                                                              break loop1;
                                                                                                                           }
                                                                                                                           continue loop0;
                                                                                                                        }
                                                                                                                        if(!(_loc18_ && Boolean(_loc2_)))
                                                                                                                        {
                                                                                                                           §§goto(addr0473);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr04ab);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr04df:
                                                                                                                     §§goto(addr04e0);
                                                                                                                     §§push(null);
                                                                                                                  }
                                                                                                                  §§goto(addr052a);
                                                                                                               case 2:
                                                                                                                  §§push(_loc9_);
                                                                                                                  if(_loc17_ || Boolean(this))
                                                                                                                  {
                                                                                                                     §§goto(addr03f5);
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  continue;
                                                                                                               case 3:
                                                                                                                  §§push(_loc9_);
                                                                                                                  if(!_loc18_)
                                                                                                                  {
                                                                                                                     addr045a:
                                                                                                                     §§push(null);
                                                                                                                     if(!_loc18_)
                                                                                                                     {
                                                                                                                        §§goto(addr0461);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr04e0);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr04df);
                                                                                                                  }
                                                                                                                  §§goto(addr04e0);
                                                                                                               case 4:
                                                                                                                  §§push(_loc9_);
                                                                                                                  if(_loc18_ && Boolean(this))
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  §§goto(addr04df);
                                                                                                            }
                                                                                                            addr067a:
                                                                                                            _loc3_.categoryMenu = _loc4_;
                                                                                                            if(!_loc17_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§goto(addr0686);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(ServerTagConstants.CLIENT_PAYMENT_PACK_STUDENT);
                                                                                                            if(!_loc18_)
                                                                                                            {
                                                                                                               §§push(_loc15_);
                                                                                                               if(_loc17_ || Boolean(_loc2_))
                                                                                                               {
                                                                                                                  addr05b0:
                                                                                                                  if(§§pop() === §§pop())
                                                                                                                  {
                                                                                                                     if(!(_loc18_ && Boolean(_loc2_)))
                                                                                                                     {
                                                                                                                        addr05c2:
                                                                                                                        §§push(1);
                                                                                                                        if(_loc18_)
                                                                                                                        {
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr0624:
                                                                                                                        §§push(3);
                                                                                                                        if(_loc17_)
                                                                                                                        {
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(ServerTagConstants.CLIENT_PAYMENT_PACK_PRODUCTION);
                                                                                                                     if(_loc17_)
                                                                                                                     {
                                                                                                                        §§push(_loc15_);
                                                                                                                        if(!_loc18_)
                                                                                                                        {
                                                                                                                           if(§§pop() === §§pop())
                                                                                                                           {
                                                                                                                              if(_loc17_)
                                                                                                                              {
                                                                                                                                 §§push(2);
                                                                                                                                 if(_loc17_ || Boolean(this))
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr0624);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push(ServerTagConstants.CLIENT_PAYMENT_PACK_FIRST_AID);
                                                                                                                              if(!(_loc18_ && Boolean(param1)))
                                                                                                                              {
                                                                                                                                 addr0612:
                                                                                                                                 §§push(_loc15_);
                                                                                                                                 if(!_loc18_)
                                                                                                                                 {
                                                                                                                                    addr061a:
                                                                                                                                    if(§§pop() === §§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc17_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr0624);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr063b);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr0637:
                                                                                                                                       addr0635:
                                                                                                                                       if(ServerTagConstants.CLIENT_PAYMENT_PACK_GAMBLING === _loc15_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr063b);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§push(5);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0653);
                                                                                                                                    }
                                                                                                                                    §§goto(addr063b);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0637);
                                                                                                                              }
                                                                                                                              §§goto(addr0635);
                                                                                                                           }
                                                                                                                           §§goto(addr0653);
                                                                                                                        }
                                                                                                                        §§goto(addr0637);
                                                                                                                     }
                                                                                                                     §§goto(addr0635);
                                                                                                                  }
                                                                                                                  §§goto(addr0653);
                                                                                                               }
                                                                                                               §§goto(addr061a);
                                                                                                            }
                                                                                                            §§goto(addr0612);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr05b0);
                                                                                                   }
                                                                                                   §§goto(addr0612);
                                                                                                }
                                                                                                §§goto(addr05c2);
                                                                                             }
                                                                                             _loc2_.push(_loc3_);
                                                                                             continue;
                                                                                          }
                                                                                          §§goto(addr067a);
                                                                                       }
                                                                                       §§goto(addr04df);
                                                                                    }
                                                                                    §§goto(addr052a);
                                                                                 }
                                                                                 §§goto(addr0552);
                                                                              }
                                                                              §§goto(addr045a);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr0296);
                                                                  }
                                                                  §§goto(addr028d);
                                                               }
                                                               §§goto(addr02a8);
                                                            }
                                                            §§goto(addr02bd);
                                                         }
                                                         §§goto(addr01f2);
                                                      }
                                                      §§goto(addr02bd);
                                                   }
                                                   §§goto(addr01f2);
                                                }
                                                §§goto(addr01be);
                                             }
                                             §§goto(addr01bf);
                                          }
                                          §§goto(addr01be);
                                       }
                                       §§goto(addr015e);
                                    }
                                    §§goto(addr016e);
                                 }
                                 §§goto(addr0686);
                              }
                              §§goto(addr067a);
                           }
                           §§goto(addr02bd);
                        }
                        §§goto(addr034c);
                     }
                     §§goto(addr03c1);
                  }
                  §§goto(addr02df);
               }
               §§goto(addr00d1);
            }
            §§goto(addr0436);
         }
         if(!(_loc18_ && Boolean(param1)))
         {
            param1.categories = _loc2_;
            if(_loc17_ || Boolean(_loc3_))
            {
               param1.flavourText = LocaUtils.getString("rcl.booklayer.startpackbuy","rcl.booklayer.startpackbuy.layer.flavor");
            }
         }
         return param1;
      }
      
      private function createSpecialContentVo(param1:CityTreasuryTabVo, param2:String = "") : CityTreasuryTabVo
      {
         §§push(false);
         var _loc14_:Boolean = true;
         var _loc15_:* = §§pop();
         var _loc4_:CityTreasuryCategoryVo = null;
         var _loc5_:CategoryMenuListVo = null;
         var _loc6_:ICityTreasuryContentVo = null;
         var _loc7_:* = null;
         var _loc9_:String = null;
         var _loc10_:ExternalPaymentPackInfoVo = null;
         var _loc3_:Vector.<CityTreasuryCategoryVo> = new Vector.<CityTreasuryCategoryVo>();
         var _loc8_:* = 0;
         loop0:
         for each(_loc9_ in specialCategories)
         {
            _loc4_ = new CityTreasuryCategoryVo();
            _loc4_.currentRCStock = this.resourceProxy.realCurrency;
            _loc5_ = new CategoryMenuListVo();
            if(_loc14_)
            {
               §§push(this.getIcon(CityTreasuryTabProxy.SPECIALS_TAB_INDEX,_loc8_));
               if(_loc14_ || Boolean(param2))
               {
                  §§push(§§pop());
                  if(!(_loc15_ && Boolean(param1)))
                  {
                     _loc7_ = §§pop();
                     if(!(_loc15_ && Boolean(param1)))
                     {
                        §§push(_loc8_);
                        if(!(_loc15_ && Boolean(_loc3_)))
                        {
                           §§push(uint(§§pop() + 1));
                        }
                        _loc8_ = §§pop();
                        if(!_loc15_)
                        {
                           §§push(_loc7_);
                           if(!(_loc15_ && Boolean(param1)))
                           {
                              §§push(§§pop());
                              if(!_loc15_)
                              {
                                 var _temp_7:* = §§pop();
                                 §§push(_temp_7);
                                 if(_temp_7)
                                 {
                                    if(_loc14_ || Boolean(this))
                                    {
                                       §§pop();
                                       if(_loc14_)
                                       {
                                          addr010b:
                                          §§push(_loc9_);
                                          if(!_loc15_)
                                          {
                                             addr0128:
                                             addr0113:
                                             §§push(§§pop() == ServerTagConstants.CLIENT_PAYMENT_PACK_RENT_COLLECTOR);
                                             if(_loc14_ || Boolean(_loc3_))
                                             {
                                                addr0127:
                                                §§push(!§§pop());
                                             }
                                             if(§§pop())
                                             {
                                                if(!(_loc15_ && Boolean(_loc3_)))
                                                {
                                                   addr013a:
                                                   §§push(_loc7_);
                                                   if(_loc14_ || Boolean(param2))
                                                   {
                                                      _loc7_ = §§pop() + "_small";
                                                      if(!_loc15_)
                                                      {
                                                         addr0383:
                                                         §§push(_loc9_);
                                                         loop1:
                                                         while(true)
                                                         {
                                                            var _loc13_:* = §§pop();
                                                            if(!(_loc15_ && Boolean(this)))
                                                            {
                                                               §§push(SPECIAL_CAT_CASH_FOR_ACTION);
                                                               if(_loc14_ || Boolean(this))
                                                               {
                                                                  §§push(_loc13_);
                                                                  if(!_loc15_)
                                                                  {
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(_loc14_)
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc14_ || Boolean(param1))
                                                                           {
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr040e:
                                                                           §§push(2);
                                                                           if(_loc14_)
                                                                           {
                                                                           }
                                                                        }
                                                                        addr0426:
                                                                        switch(§§pop())
                                                                        {
                                                                           case 0:
                                                                              §§push(_loc7_);
                                                                              if(_loc14_)
                                                                              {
                                                                                 if(§§pop() == null)
                                                                                 {
                                                                                    if(!(_loc15_ && Boolean(param2)))
                                                                                    {
                                                                                       addr0176:
                                                                                       _loc5_.categoryIcon = new BriskDynaVo("gui_popups_goodRebuyPopup","cat_icon_cashForAction");
                                                                                       if(!(_loc15_ && Boolean(this)))
                                                                                       {
                                                                                          addr01ae:
                                                                                          _loc5_.categoryName = LocaUtils.getString("rcl.booklayer.specialrebuy","rcl.booklayer.specialrebuy.cfa.categoryentry");
                                                                                          if(_loc15_ && Boolean(param1))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr01cd:
                                                                                    _loc6_ = new CityTreasuryCashForActionVo();
                                                                                    if(!_loc15_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    _loc5_.categoryIcon = new BriskDynaVo("gui_popups_goodRebuyPopup","cat_icon_bonusCode");
                                                                                    addr01f9:
                                                                                    if(_loc14_ || Boolean(_loc3_))
                                                                                    {
                                                                                       addr0246:
                                                                                       _loc5_.categoryName = LocaUtils.getString("rcl.booklayer.specialrebuy","rcl.booklayer.specialrebuy.bonuscode.categoryentry");
                                                                                       if(!_loc15_)
                                                                                       {
                                                                                          addr025d:
                                                                                          _loc6_ = new CityTreasuryBonusCodeVo();
                                                                                          (_loc6_ as CityTreasuryBonusCodeVo).errorLabel = param2;
                                                                                          if(!_loc15_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          addr02be:
                                                                                          _loc5_.categoryName = LocaUtils.getString("rcl.misc.rentCollector","rcl.misc.rentCollector.name");
                                                                                          addr02cf:
                                                                                          _loc6_ = new CityTreasuryRentCollectorVo();
                                                                                          if(!_loc15_)
                                                                                          {
                                                                                             if(!this.allExternalRentCollectorPacks.length)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(!(_loc15_ && Boolean(this)))
                                                                                             {
                                                                                                CityTreasuryRentCollectorVo(_loc6_).pack = this.allExternalRentCollectorPacks[0];
                                                                                             }
                                                                                          }
                                                                                          _loc10_ = this._rentCollectorPaymentHelper.paymentDictionary[CityTreasuryRentCollectorVo(_loc6_).pack.id];
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             if(!(_loc14_ || Boolean(_loc3_)))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             CityTreasuryRentCollectorVo(_loc6_).price = _loc10_.price;
                                                                                             if(!_loc15_)
                                                                                             {
                                                                                                CityTreasuryRentCollectorVo(_loc6_).currency = _loc10_.currencyAsSymbol;
                                                                                                if(!_loc14_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          CityTreasuryRentCollectorVo(_loc6_).icon = _loc7_;
                                                                                          break;
                                                                                       }
                                                                                       addr0446:
                                                                                       _loc4_.contentVo = _loc6_;
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          break loop1;
                                                                                       }
                                                                                       continue loop0;
                                                                                    }
                                                                                    §§goto(addr025d);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    _loc5_.categoryIcon = new BriskDynaVo("gui_popups_paperPopup",_loc7_);
                                                                                    if(!_loc14_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr01ae);
                                                                              }
                                                                              continue;
                                                                           case 1:
                                                                              if(_loc7_ == null)
                                                                              {
                                                                                 if(_loc14_ || Boolean(param1))
                                                                                 {
                                                                                    §§goto(addr01f9);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 _loc5_.categoryIcon = new BriskDynaVo("gui_popups_paperPopup",_loc7_);
                                                                                 if(_loc14_ || Boolean(this))
                                                                                 {
                                                                                    §§goto(addr0246);
                                                                                 }
                                                                              }
                                                                              §§goto(addr0446);
                                                                           case 2:
                                                                              if(_loc7_ == null)
                                                                              {
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    _loc5_.categoryIcon = new BriskDynaVo("gui_popups_goodRebuyPopup","cat_icon_rentCollector");
                                                                                    if(_loc15_)
                                                                                    {
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr02be);
                                                                              }
                                                                              else
                                                                              {
                                                                                 _loc5_.categoryIcon = new BriskDynaVo("gui_popups_paperPopup",_loc7_ + "_small");
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    §§goto(addr02be);
                                                                                 }
                                                                              }
                                                                              §§goto(addr02cf);
                                                                        }
                                                                        addr0439:
                                                                        _loc4_.categoryMenu = _loc5_;
                                                                        if(!_loc14_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr0446);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(SPECIAL_CAT_BONUS_CODE);
                                                                        if(!(_loc15_ && Boolean(param1)))
                                                                        {
                                                                           §§push(_loc13_);
                                                                           if(!_loc15_)
                                                                           {
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 if(_loc14_ || Boolean(_loc3_))
                                                                                 {
                                                                                    addr03f7:
                                                                                    §§push(1);
                                                                                    if(_loc14_)
                                                                                    {
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr040e);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr040a:
                                                                                 addr0408:
                                                                                 if(ServerTagConstants.CLIENT_PAYMENT_PACK_RENT_COLLECTOR === _loc13_)
                                                                                 {
                                                                                    §§goto(addr040e);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(3);
                                                                                 }
                                                                              }
                                                                              §§goto(addr0426);
                                                                           }
                                                                           §§goto(addr040a);
                                                                        }
                                                                        §§goto(addr0408);
                                                                     }
                                                                  }
                                                                  §§goto(addr040a);
                                                               }
                                                               §§goto(addr0408);
                                                            }
                                                            §§goto(addr03f7);
                                                         }
                                                         _loc3_.push(_loc4_);
                                                         continue;
                                                         addr0385:
                                                      }
                                                      §§goto(addr01ae);
                                                   }
                                                   §§goto(addr0385);
                                                }
                                                §§goto(addr0176);
                                             }
                                             §§goto(addr0383);
                                          }
                                          §§goto(addr0163);
                                       }
                                       §§goto(addr01cd);
                                    }
                                    §§goto(addr0127);
                                 }
                                 §§goto(addr0128);
                              }
                              §§goto(addr0127);
                           }
                           §§goto(addr0385);
                        }
                        §§goto(addr013a);
                     }
                     §§goto(addr010b);
                  }
                  §§goto(addr0163);
               }
               §§goto(addr0113);
            }
            §§goto(addr0439);
         }
         if(_loc14_)
         {
            param1.categories = _loc3_;
            if(!_loc15_)
            {
               addr0481:
               param1.flavourText = LocaUtils.getString("rcl.booklayer.specialrebuy","rcl.booklayer.specialrebuy.layer.flavor");
            }
            return param1;
         }
         §§goto(addr0481);
      }
      
      private function gatherPacks(param1:String) : Vector.<ConfigPaymentPackDTO>
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc3_:ConfigPaymentPackDTO = null;
         var _loc4_:ConfigTagDTO = null;
         var _loc2_:Vector.<ConfigPaymentPackDTO> = new Vector.<ConfigPaymentPackDTO>();
         for each(_loc3_ in this.configProxy.config.paymentPacks)
         {
            if(_loc10_ || Boolean(this))
            {
               var _loc7_:int = 0;
               if(_loc10_)
               {
                  var _loc8_:* = _loc3_.configTags;
                  for each(_loc7_ in _loc8_)
                  {
                     var _temp_3:* = _loc7_;
                     _loc4_ = _loc7_;
                     if(_loc4_.tagName == param1)
                     {
                        if(!(_loc9_ && Boolean(this)))
                        {
                           _loc2_.push(_loc3_);
                        }
                     }
                  }
               }
            }
         }
         return _loc2_;
      }
      
      private function gatherPacksByTabAndCategory(param1:String, param2:String) : Vector.<ConfigPaymentPackDTO>
      {
         §§push(false);
         var _loc15_:Boolean = true;
         var _loc16_:* = §§pop();
         var _loc6_:ConfigPaymentPackDTO = null;
         var _loc7_:ConfigTagDTO = null;
         var _loc8_:ConfigTagDTO = null;
         var _loc3_:Vector.<ConfigPaymentPackDTO> = new Vector.<ConfigPaymentPackDTO>();
         §§push(goodCategories.indexOf(param2) == -1);
         if(!(_loc16_ && Boolean(_loc3_)))
         {
            §§push(!§§pop());
         }
         var _loc4_:* = §§pop();
         §§push(resourceCategories.indexOf(param2) == -1);
         if(_loc15_)
         {
            §§push(!§§pop());
         }
         var _loc5_:* = §§pop();
         for each(_loc6_ in this.configProxy.config.paymentPacks)
         {
            for each(_loc7_ in _loc6_.configTags)
            {
               §§push(_loc7_.tagName);
               if(_loc15_)
               {
                  §§push(param1);
                  if(!(_loc16_ && Boolean(param1)))
                  {
                     if(§§pop() != §§pop())
                     {
                        continue;
                     }
                     if(!_loc16_)
                     {
                        §§push(_loc4_);
                        if(_loc15_)
                        {
                           if(§§pop())
                           {
                              if(_loc15_)
                              {
                                 if(_loc6_.goods.length <= 0)
                                 {
                                    break;
                                 }
                                 if(!(_loc16_ && Boolean(param1)))
                                 {
                                    §§push(Boolean(_loc6_.goods[0]));
                                    if(_loc15_)
                                    {
                                       var _temp_5:* = §§pop();
                                       §§push(_temp_5);
                                       §§push(_temp_5);
                                       if(!(_loc16_ && Boolean(_loc3_)))
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc16_ && Boolean(param2)))
                                             {
                                                addr011f:
                                                §§pop();
                                                if(!_loc16_)
                                                {
                                                   §§push(Boolean(_loc6_.goods[0].goodConfig));
                                                   if(!(_loc16_ && Boolean(_loc3_)))
                                                   {
                                                      addr014c:
                                                      if(!§§pop())
                                                      {
                                                         break;
                                                      }
                                                      if(_loc15_ || Boolean(param1))
                                                      {
                                                         for each(_loc8_ in _loc6_.goods[0].goodConfig.tagConfigs)
                                                         {
                                                            if(_loc8_.tagName == param2)
                                                            {
                                                               if(_loc15_)
                                                               {
                                                                  _loc3_.push(_loc6_);
                                                               }
                                                               break;
                                                            }
                                                         }
                                                         break;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr023d:
                                                      §§pop();
                                                      if(!(_loc15_ || Boolean(param1)))
                                                      {
                                                         break;
                                                      }
                                                      addr025a:
                                                      addr024c:
                                                      if(!Boolean(_loc6_.resources[0].resourceConfig))
                                                      {
                                                         break;
                                                      }
                                                      if(_loc15_ || Boolean(this))
                                                      {
                                                         addr026c:
                                                         if(_loc6_.resources[0].resourceConfig.type != param2)
                                                         {
                                                            break;
                                                         }
                                                         if(!(_loc15_ || Boolean(this)))
                                                         {
                                                            break;
                                                         }
                                                      }
                                                   }
                                                   addr029d:
                                                   _loc3_.push(_loc6_);
                                                }
                                                break;
                                             }
                                             §§goto(addr025a);
                                          }
                                          §§goto(addr014c);
                                       }
                                       else
                                       {
                                          addr0233:
                                          if(§§pop())
                                          {
                                             if(!_loc16_)
                                             {
                                                §§goto(addr023d);
                                             }
                                          }
                                       }
                                       §§goto(addr025a);
                                    }
                                    §§goto(addr011f);
                                 }
                                 §§goto(addr024c);
                              }
                              §§goto(addr029d);
                           }
                           else
                           {
                              §§push(_loc5_);
                              if(_loc15_)
                              {
                                 if(!§§pop())
                                 {
                                    break;
                                 }
                                 if(!(_loc15_ || Boolean(this)))
                                 {
                                    break;
                                 }
                                 §§push(param2);
                                 if(!(_loc16_ && Boolean(param2)))
                                 {
                                    addr01d5:
                                    §§push(ServerResConst.RESOURCE_REALCURRENCY);
                                    if(!_loc16_)
                                    {
                                       addr01e0:
                                       if(§§pop() == §§pop())
                                       {
                                          if(!_loc16_)
                                          {
                                             addr01f4:
                                             addr01ee:
                                             if(_loc6_.type != ServerPaymentPackConst.CURRENCY)
                                             {
                                                break;
                                             }
                                             if(_loc15_)
                                             {
                                                _loc3_.push(_loc6_);
                                                if(_loc15_)
                                                {
                                                }
                                                break;
                                             }
                                             §§goto(addr024c);
                                          }
                                          §§goto(addr026c);
                                       }
                                       else
                                       {
                                          if(_loc6_.resources.length <= 0)
                                          {
                                             break;
                                          }
                                          if(!_loc16_)
                                          {
                                             §§push(Boolean(_loc6_.resources[0]));
                                             if(_loc15_)
                                             {
                                                addr0232:
                                                var _temp_16:* = §§pop();
                                                §§goto(addr0233);
                                                §§push(_temp_16);
                                                §§push(_temp_16);
                                             }
                                             §§goto(addr025a);
                                          }
                                       }
                                       §§goto(addr029d);
                                    }
                                    §§goto(addr01f4);
                                 }
                                 §§goto(addr01ee);
                              }
                              §§goto(addr0232);
                           }
                        }
                        §§goto(addr0232);
                     }
                     §§goto(addr026c);
                  }
                  §§goto(addr01e0);
               }
               §§goto(addr01d5);
            }
         }
         return _loc3_;
      }
      
      private function getPacksByCategory(param1:Vector.<ConfigPaymentPackDTO>, param2:String) : Vector.<ConfigPaymentPackDTO>
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc4_:ConfigPaymentPackDTO = null;
         var _loc5_:ConfigTagDTO = null;
         var _loc3_:Vector.<ConfigPaymentPackDTO> = new Vector.<ConfigPaymentPackDTO>();
         for each(_loc4_ in param1)
         {
            if(!_loc11_)
            {
               §§push(param2);
               if(!_loc11_)
               {
                  §§push(ServerResConst.RESOURCE_REALCURRENCY);
                  if(!(_loc11_ && Boolean(_loc3_)))
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc11_ && Boolean(param2))
                        {
                           addr0146:
                           for each(_loc5_ in _loc4_.goods[0].goodConfig.tagConfigs)
                           {
                              if(_loc5_.tagName == param2)
                              {
                                 if(_loc10_)
                                 {
                                    _loc3_.push(_loc4_);
                                 }
                                 break;
                              }
                           }
                           continue;
                        }
                        addr0082:
                        addr007c:
                        if(_loc4_.type != ServerPaymentPackConst.CURRENCY)
                        {
                           continue;
                        }
                        if(_loc11_ && Boolean(param2))
                        {
                           continue;
                        }
                        _loc3_.push(_loc4_);
                        if(!_loc11_)
                        {
                           continue;
                        }
                        addr01bb:
                        §§push(Boolean(_loc4_.resources[0]));
                        if(!_loc11_)
                        {
                           var _temp_4:* = §§pop();
                           addr01cd:
                           §§push(_temp_4);
                           if(_temp_4)
                           {
                              if(!(_loc11_ && Boolean(param2)))
                              {
                                 addr01df:
                                 §§pop();
                                 if(_loc10_ || Boolean(_loc3_))
                                 {
                                    addr01fc:
                                    if(!Boolean(_loc4_.resources[0].resourceConfig))
                                    {
                                       continue;
                                    }
                                    if(!(_loc10_ || Boolean(param1)))
                                    {
                                       continue;
                                    }
                                    addr020e:
                                    if(_loc4_.resources[0].resourceConfig.type != param2)
                                    {
                                       continue;
                                    }
                                    if(_loc11_)
                                    {
                                       continue;
                                    }
                                 }
                                 addr0234:
                                 _loc3_.push(_loc4_);
                                 continue;
                              }
                           }
                        }
                        §§goto(addr01fc);
                     }
                     else if(goodCategories.indexOf(param2) != -1)
                     {
                        if(!(_loc11_ && Boolean(_loc3_)))
                        {
                           if(_loc4_.goods.length <= 0)
                           {
                              continue;
                           }
                           if(!(_loc11_ && Boolean(param2)))
                           {
                              addr00db:
                              §§push(Boolean(_loc4_.goods[0]));
                              if(!_loc11_)
                              {
                                 var _temp_11:* = §§pop();
                                 §§push(_temp_11);
                                 §§push(_temp_11);
                                 if(_loc10_ || Boolean(param1))
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc10_ || Boolean(param2))
                                       {
                                          §§pop();
                                          if(_loc10_ || Boolean(this))
                                          {
                                             §§push(Boolean(_loc4_.goods[0].goodConfig));
                                             if(!_loc11_)
                                             {
                                                addr013c:
                                                if(!§§pop())
                                                {
                                                   continue;
                                                }
                                                if(!_loc10_)
                                                {
                                                   continue;
                                                }
                                                §§goto(addr0146);
                                             }
                                             else
                                             {
                                                §§goto(addr01fc);
                                             }
                                          }
                                          §§goto(addr020e);
                                       }
                                    }
                                    §§goto(addr013c);
                                 }
                                 else
                                 {
                                    §§goto(addr01cd);
                                 }
                              }
                              §§goto(addr01df);
                           }
                           §§goto(addr0146);
                        }
                        else
                        {
                           addr01a8:
                           if(_loc4_.resources.length <= 0)
                           {
                              continue;
                           }
                           if(_loc11_)
                           {
                              continue;
                           }
                           §§goto(addr01bb);
                        }
                     }
                     else
                     {
                        if(resourceCategories.indexOf(param2) == -1)
                        {
                           continue;
                        }
                        if(!_loc11_)
                        {
                           §§goto(addr01a8);
                        }
                     }
                     §§goto(addr0234);
                  }
                  §§goto(addr0082);
               }
               §§goto(addr007c);
            }
            §§goto(addr00db);
         }
         if(!(_loc11_ && Boolean(_loc3_)))
         {
            _loc3_.sort(this.sortOnGfxId);
         }
         return _loc3_;
      }
      
      private function sortOnGfxId(param1:ConfigPaymentPackDTO, param2:ConfigPaymentPackDTO) : int
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || _loc3_)
         {
            §§push(param1.gfxId);
            if(_loc3_)
            {
               §§push(param2.gfxId);
               if(!_loc4_)
               {
                  if(§§pop() > §§pop())
                  {
                     if(!_loc4_)
                     {
                        §§push(1);
                        if(!_loc4_)
                        {
                           §§goto(addr0051);
                        }
                     }
                     else
                     {
                        §§goto(addr0057);
                     }
                     §§goto(addr009a);
                  }
                  §§goto(addr0057);
               }
               §§goto(addr007a);
            }
            addr0051:
            return §§pop();
         }
         addr0057:
         §§push(param1.gfxId);
         if(_loc3_ || Boolean(this))
         {
            addr007a:
            if(§§pop() < param2.gfxId)
            {
               if(_loc3_ || Boolean(param1))
               {
                  §§push(-1);
                  if(_loc3_ || _loc3_)
                  {
                     addr009a:
                     return §§pop();
                  }
               }
               else
               {
                  addr009b:
                  §§push(0);
               }
               §§goto(addr009d);
            }
            §§goto(addr009b);
         }
         addr009d:
         return §§pop();
      }
      
      private function getInternalPacks(param1:Vector.<ConfigPaymentPackDTO>, param2:int, param3:int, param4:String) : Vector.<CityTreasuryInternalPackItemVo>
      {
         var _temp_1:* = true;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = _temp_1;
         var _loc9_:ConfigPaymentPackDTO = null;
         var _loc10_:CityTreasuryInternalPackItemVo = null;
         var _loc5_:Vector.<CityTreasuryInternalPackItemVo> = new Vector.<CityTreasuryInternalPackItemVo>();
         var _loc6_:PlayerPaymentUpsellDTO = this.playerProxy.player.playerPaymentPackInfo.upsellPaymentPack;
         var _loc7_:Vector.<ConfigPaymentPackDTO> = this.getPacksByCategory(param1,param4);
         var _loc8_:int = 0;
         for each(_loc9_ in _loc7_)
         {
            _loc10_ = new CityTreasuryInternalPackItemVo(_loc9_);
            _loc10_.icon = this.getIcon(param2,param3,_loc8_);
            if(!_loc13_)
            {
               §§push(_loc6_);
               if(!_loc13_)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  §§push(_temp_3);
                  if(_loc14_ || Boolean(this))
                  {
                     if(§§pop())
                     {
                        if(_loc14_ || Boolean(param3))
                        {
                           §§pop();
                           if(_loc14_)
                           {
                              addr00c9:
                              §§push(_loc6_.id == _loc9_.id);
                              if(!_loc13_)
                              {
                                 §§push(§§pop());
                                 if(!_loc13_)
                                 {
                                    addr00e0:
                                    var _temp_6:* = §§pop();
                                    addr00e1:
                                    §§push(_temp_6);
                                    if(_temp_6)
                                    {
                                       if(!_loc13_)
                                       {
                                          addr00eb:
                                          §§pop();
                                          if(!(_loc14_ || Boolean(param1)))
                                          {
                                             continue;
                                          }
                                          addr0114:
                                          §§push(this.upsellingActive(_loc6_));
                                          if(_loc14_)
                                          {
                                             addr0113:
                                             §§push(§§pop());
                                          }
                                          if(§§pop())
                                          {
                                             if(_loc14_)
                                             {
                                                addr011e:
                                                _loc10_.hasDiscount = true;
                                                if(_loc14_)
                                                {
                                                   addr012a:
                                                   _loc5_.push(_loc10_);
                                                   if(_loc13_)
                                                   {
                                                      continue;
                                                   }
                                                }
                                             }
                                             _loc8_++;
                                             continue;
                                          }
                                          §§goto(addr012a);
                                       }
                                       §§goto(addr0113);
                                    }
                                    §§goto(addr0114);
                                 }
                              }
                              §§goto(addr00eb);
                           }
                           §§goto(addr011e);
                        }
                        §§goto(addr0113);
                     }
                     §§goto(addr00e0);
                  }
                  §§goto(addr00e1);
               }
               §§goto(addr00eb);
            }
            §§goto(addr00c9);
         }
         return _loc5_;
      }
      
      private function getRealCurrencyPacks(param1:Vector.<ConfigPaymentPackDTO>, param2:int, param3:int, param4:String) : Vector.<CityTreasuryRealCurrencyPackItemVo>
      {
         var _temp_1:* = true;
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = _temp_1;
         var _loc9_:ConfigPaymentPackDTO = null;
         var _loc10_:CityTreasuryRealCurrencyPackItemVo = null;
         var _loc11_:ExternalPaymentPackInfoVo = null;
         var _loc12_:* = null;
         var _loc13_:ConfigPaymentPackUpsellingDTO = null;
         var _loc5_:Vector.<CityTreasuryRealCurrencyPackItemVo> = new Vector.<CityTreasuryRealCurrencyPackItemVo>();
         var _loc6_:PlayerPaymentUpsellDTO = this.playerProxy.player.playerPaymentPackInfo.upsellPaymentPack;
         var _loc7_:Vector.<ConfigPaymentPackDTO> = this.getPacksByCategory(param1,param4);
         var _loc8_:int = 0;
         for each(_loc9_ in _loc7_)
         {
            _loc10_ = new CityTreasuryRealCurrencyPackItemVo(_loc9_);
            _loc10_.icon = this.getIcon(param2,param3,_loc8_);
            if(!(_loc18_ && Boolean(param3)))
            {
               §§push(this._realCurrencyPackPaymentHelper);
               if(_loc19_)
               {
                  §§push(Boolean(§§pop().paymentDictionary));
                  if(!(_loc18_ && Boolean(this)))
                  {
                     var _temp_5:* = §§pop();
                     §§push(_temp_5);
                     §§push(_temp_5);
                     if(_loc19_ || Boolean(param1))
                     {
                        if(§§pop())
                        {
                           if(!_loc18_)
                           {
                              §§pop();
                              if(!_loc18_)
                              {
                                 §§push(this._realCurrencyPackPaymentHelper);
                                 if(_loc19_)
                                 {
                                    §§push(Boolean(§§pop().paymentDictionary[_loc9_.id]));
                                    if(_loc19_ || Boolean(param2))
                                    {
                                       addr0103:
                                       if(§§pop())
                                       {
                                          if(!_loc18_)
                                          {
                                             addr0111:
                                             _loc11_ = this._realCurrencyPackPaymentHelper.paymentDictionary[_loc9_.id];
                                             addr010d:
                                             if(!_loc18_)
                                             {
                                                _loc10_.priceExternal = _loc11_.price;
                                                if(_loc19_ || Boolean(this))
                                                {
                                                   _loc10_.currency = _loc11_.currencyAsSymbol;
                                                   if(_loc19_ || Boolean(param1))
                                                   {
                                                      _loc10_.packContentAmount = _loc11_.amount;
                                                   }
                                                }
                                             }
                                             addr0161:
                                             §§push(this._upsellEnabled);
                                             if(_loc19_ || Boolean(param3))
                                             {
                                                addr0173:
                                                var _temp_11:* = §§pop();
                                                §§push(_temp_11);
                                                if(_temp_11)
                                                {
                                                   §§pop();
                                                   if(!(_loc18_ && Boolean(param3)))
                                                   {
                                                      addr0199:
                                                      addr0196:
                                                      §§push(_loc6_);
                                                      if(_loc19_ || Boolean(param1))
                                                      {
                                                         var _temp_14:* = §§pop();
                                                         §§push(_temp_14);
                                                         §§push(_temp_14);
                                                         if(_loc19_)
                                                         {
                                                            addr01b0:
                                                            if(§§pop())
                                                            {
                                                               if(_loc19_)
                                                               {
                                                                  addr01ba:
                                                                  §§pop();
                                                                  if(_loc18_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  addr01c1:
                                                                  §§push(_loc6_.id == _loc9_.id);
                                                                  if(!_loc18_)
                                                                  {
                                                                     addr01d0:
                                                                     §§push(§§pop());
                                                                     if(_loc19_)
                                                                     {
                                                                        addr01d8:
                                                                        var _temp_15:* = §§pop();
                                                                        addr01d9:
                                                                        §§push(_temp_15);
                                                                        if(_temp_15)
                                                                        {
                                                                           if(_loc19_ || Boolean(param3))
                                                                           {
                                                                              addr01eb:
                                                                              §§pop();
                                                                              if(!(_loc18_ && Boolean(param3)))
                                                                              {
                                                                                 addr0210:
                                                                                 §§push(this.upsellingActive(_loc6_));
                                                                                 if(!(_loc18_ && Boolean(param3)))
                                                                                 {
                                                                                    addr020f:
                                                                                    §§push(§§pop());
                                                                                 }
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!(_loc19_ || Boolean(param1)))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    _loc12_ = "";
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       for each(_loc13_ in _loc9_.upsellPackages)
                                                                                       {
                                                                                          §§push(_loc13_.category);
                                                                                          if(!(_loc18_ && Boolean(param1)))
                                                                                          {
                                                                                             if(§§pop() != _loc6_.type)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(!(_loc19_ || Boolean(param1)))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§push(_loc13_.key);
                                                                                             if(!_loc18_)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                             }
                                                                                          }
                                                                                          _loc12_ = §§pop();
                                                                                          break;
                                                                                       }
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          §§push(this._upsellPackPaymentHelper);
                                                                                          if(!(_loc18_ && Boolean(param2)))
                                                                                          {
                                                                                             §§push(Boolean(§§pop().paymentDictionary));
                                                                                             if(!(_loc18_ && Boolean(param2)))
                                                                                             {
                                                                                                var _temp_25:* = §§pop();
                                                                                                §§push(_temp_25);
                                                                                                if(_temp_25)
                                                                                                {
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      addr02c1:
                                                                                                      §§pop();
                                                                                                      if(_loc19_ || Boolean(param3))
                                                                                                      {
                                                                                                         addr02dd:
                                                                                                         addr02d4:
                                                                                                         if(Boolean(this._upsellPackPaymentHelper.paymentDictionary[_loc12_]))
                                                                                                         {
                                                                                                            if(_loc19_)
                                                                                                            {
                                                                                                               _loc10_.discountedPriceExternal = this._upsellPackPaymentHelper.paymentDictionary[_loc12_].price;
                                                                                                               addr02e7:
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr030c:
                                                                                                      _loc5_.push(_loc10_);
                                                                                                      if(_loc19_ || Boolean(param2))
                                                                                                      {
                                                                                                         addr0321:
                                                                                                         _loc8_++;
                                                                                                      }
                                                                                                      continue;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr02dd);
                                                                                             }
                                                                                             §§goto(addr02c1);
                                                                                          }
                                                                                          §§goto(addr02d4);
                                                                                       }
                                                                                       §§goto(addr02e7);
                                                                                    }
                                                                                    §§goto(addr0321);
                                                                                 }
                                                                                 §§goto(addr030c);
                                                                              }
                                                                              §§goto(addr0321);
                                                                           }
                                                                           §§goto(addr020f);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr0210);
                                                               }
                                                               §§goto(addr01eb);
                                                            }
                                                            §§goto(addr01d8);
                                                         }
                                                         §§goto(addr01d9);
                                                      }
                                                      §§goto(addr01d0);
                                                   }
                                                   §§goto(addr0321);
                                                }
                                                §§goto(addr0199);
                                             }
                                             §§goto(addr020f);
                                          }
                                          §§goto(addr0196);
                                       }
                                       §§goto(addr0161);
                                    }
                                    §§goto(addr0210);
                                 }
                                 §§goto(addr0111);
                              }
                              §§goto(addr010d);
                           }
                           §§goto(addr0173);
                        }
                        §§goto(addr0103);
                     }
                     §§goto(addr01b0);
                  }
                  §§goto(addr01ba);
               }
               §§goto(addr0111);
            }
            §§goto(addr01c1);
         }
         return _loc5_;
      }
      
      private function get allStarterPacks() : Vector.<ConfigPaymentPackDTO>
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc2_:ConfigPaymentPackDTO = null;
         var _loc3_:ConfigTagDTO = null;
         var _loc4_:* = null;
         var _loc1_:Vector.<ConfigPaymentPackDTO> = new Vector.<ConfigPaymentPackDTO>();
         for each(_loc2_ in this.configProxy.config.paymentPacks)
         {
            if(!(_loc12_ && Boolean(this)))
            {
               var _loc7_:int = 0;
               if(!_loc12_)
               {
                  for each(_loc3_ in _loc2_.configTags)
                  {
                     if(_loc12_ && Boolean(_loc1_))
                     {
                        continue;
                     }
                     var _loc9_:int = 0;
                     if(_loc11_)
                     {
                        var _loc10_:* = starterPackCategories;
                        if(!_loc12_)
                        {
                           for each(_loc9_ in _loc10_)
                           {
                              §§push(_loc9_);
                              if(!_loc12_)
                              {
                                 _loc4_ = §§pop();
                                 if(_loc11_)
                                 {
                                    addr00d9:
                                    if(_loc3_.tagName != _loc4_)
                                    {
                                       continue;
                                    }
                                    if(!_loc11_)
                                    {
                                       break;
                                    }
                                 }
                                 addr00e5:
                                 _loc1_.push(_loc2_);
                                 break;
                              }
                              §§goto(addr00d9);
                           }
                           addr00f7:
                           continue;
                        }
                        §§goto(addr00e5);
                     }
                     §§goto(addr00f7);
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function get allRealCurrencyPacks() : Vector.<ConfigPaymentPackDTO>
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc2_:ConfigPaymentPackDTO = null;
         var _loc3_:ConfigTagDTO = null;
         var _loc1_:Vector.<ConfigPaymentPackDTO> = new Vector.<ConfigPaymentPackDTO>();
         for each(_loc2_ in this.configProxy.config.paymentPacks)
         {
            if(!(_loc9_ && Boolean(_loc2_)))
            {
               var _loc6_:int = 0;
               if(!(_loc9_ && Boolean(_loc3_)))
               {
                  for each(_loc3_ in _loc2_.configTags)
                  {
                     if(_loc8_)
                     {
                        §§push(_loc3_.tagName);
                        if(!_loc9_)
                        {
                           §§push(ServerTagConstants.CLIENT_RESOURCE_REBUY_PACK);
                           if(!(_loc9_ && Boolean(_loc2_)))
                           {
                              if(§§pop() != §§pop())
                              {
                                 continue;
                              }
                              if(!_loc8_)
                              {
                                 continue;
                              }
                              addr00ca:
                              addr00c7:
                              §§push(_loc2_.type);
                              §§push(ServerPaymentPackConst.CURRENCY);
                           }
                           if(§§pop() == §§pop())
                           {
                              if(_loc8_)
                              {
                                 _loc1_.push(_loc2_);
                              }
                           }
                           continue;
                        }
                        §§goto(addr00ca);
                     }
                     §§goto(addr00c7);
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function get allExternalRentCollectorPacks() : Vector.<ConfigPaymentPackDTO>
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc2_:ConfigPaymentPackDTO = null;
         var _loc3_:ConfigTagDTO = null;
         var _loc1_:Vector.<ConfigPaymentPackDTO> = new Vector.<ConfigPaymentPackDTO>();
         for each(_loc2_ in this.configProxy.config.paymentPacks)
         {
            if(!_loc8_)
            {
               if(_loc2_.type == ServerPaymentPackConst.EXTERNAL)
               {
                  if(_loc9_)
                  {
                     var _loc6_:int = 0;
                     if(!_loc8_)
                     {
                        for each(_loc3_ in _loc2_.configTags)
                        {
                           if(_loc9_ || Boolean(_loc1_))
                           {
                              if(_loc3_.tagName != ServerTagConstants.CLIENT_PAYMENT_PACK_RENT_COLLECTOR)
                              {
                                 continue;
                              }
                              if(!(_loc9_ || Boolean(_loc1_)))
                              {
                                 continue;
                              }
                           }
                           _loc1_.push(_loc2_);
                        }
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      public function get realCurrencyPackInfoDictionary() : Dictionary
      {
         return this._realCurrencyPackPaymentHelper.paymentDictionary;
      }
      
      public function get upsellPackInfoDictionary() : Dictionary
      {
         return this._upsellPackPaymentHelper.paymentDictionary;
      }
      
      public function get rentCollectorPackInfoDictionary() : Dictionary
      {
         return this._rentCollectorPaymentHelper.paymentDictionary;
      }
      
      private function get configProxy() : GameConfigProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            §§push(this._cP);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     addr003a:
                     this._cP = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
                  }
               }
               return this._cP;
            }
         }
         §§goto(addr003a);
      }
      
      private function get resourceProxy() : PlayerResourceProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this._pRP);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc2_ || Boolean(this))
                  {
                     addr003a:
                     this._pRP = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
                  }
               }
               return this._pRP;
            }
         }
         §§goto(addr003a);
      }
      
      private function get featureProxy() : FeatureProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this._fP);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     this._fP = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
                  }
               }
               addr004c:
               return this._fP;
            }
         }
         §§goto(addr004c);
      }
      
      private function get playerProxy() : PlayerProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this._pP);
            if(_loc1_)
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     this._pP = facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
                  }
               }
               addr0043:
               return this._pP;
            }
         }
         §§goto(addr0043);
      }
      
      private function get timerProxy() : TimerProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this._tP);
            if(_loc1_ || _loc2_)
            {
               if(!§§pop())
               {
                  if(_loc1_ || _loc1_)
                  {
                     addr0041:
                     this._tP = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
                  }
               }
               return this._tP;
            }
         }
         §§goto(addr0041);
      }
      
      public function isUpsellRunning() : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:PlayerPaymentUpsellDTO = this.playerProxy.player.playerPaymentPackInfo.upsellPaymentPack;
         if(_loc3_)
         {
            §§push(this.upsellingActive(_loc1_));
            if(!(_loc2_ && Boolean(this)))
            {
               if(§§pop())
               {
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr0064:
                     §§push(true);
                     if(_loc3_)
                     {
                        §§goto(addr006a);
                     }
                  }
                  else
                  {
                     addr0070:
                     this.cleanTreasuryIcons();
                     return false;
                  }
                  return §§pop();
               }
               §§goto(addr0070);
            }
            addr006a:
            return §§pop();
         }
         §§goto(addr0064);
      }
      
      private function upsellingActive(param1:PlayerPaymentUpsellDTO) : Boolean
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §§push(param1 == null);
            if(!(_loc3_ && _loc2_))
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               §§push(_temp_2);
               if(!_loc3_)
               {
                  if(!§§pop())
                  {
                     if(_loc2_)
                     {
                        addr0036:
                        §§pop();
                        if(!_loc3_)
                        {
                           §§push(this.timerProxy);
                           if(!(_loc3_ && Boolean(param1)))
                           {
                              §§push(§§pop().currentTimeStamp);
                              if(_loc2_)
                              {
                                 §§push(param1.startTime);
                                 if(!(_loc3_ && Boolean(param1)))
                                 {
                                    §§push(§§pop() < §§pop());
                                    if(_loc2_)
                                    {
                                       addr0079:
                                       var _temp_5:* = §§pop();
                                       addr007a:
                                       §§push(_temp_5);
                                       if(!_temp_5)
                                       {
                                          §§goto(addr00c3);
                                       }
                                       §§goto(addr00c2);
                                    }
                                    §§goto(addr008b);
                                 }
                                 §§goto(addr00af);
                              }
                              §§goto(addr009e);
                           }
                           §§goto(addr009b);
                        }
                        §§goto(addr008c);
                     }
                     addr00c3:
                     if(!(_loc3_ && _loc3_))
                     {
                        addr008b:
                        §§pop();
                        addr009e:
                        addr009b:
                        addr008c:
                        §§push(this.timerProxy.currentTimeStamp);
                        §§push(param1.startTime);
                        if(_loc2_ || _loc2_)
                        {
                           addr00af:
                           §§push(§§pop() + param1.duration);
                        }
                        §§push(§§pop() > §§pop());
                        if(!(_loc3_ && _loc3_))
                        {
                           addr00c2:
                           return !§§pop();
                        }
                     }
                  }
                  §§goto(addr0079);
               }
               §§goto(addr007a);
            }
            §§goto(addr0036);
         }
         §§goto(addr008c);
      }
      
      private function collectTreasuryIconOverrides() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            this._treasuryIcons = new Vector.<TreasuryIconOverrideVo>();
            if(!(_loc1_ && Boolean(this)))
            {
               this.collectTreasuryIconsFromUpsell();
               if(!_loc1_)
               {
                  §§goto(addr004e);
               }
               §§goto(addr0059);
            }
            addr004e:
            this.collectTreasuryIconsFromBonusDay();
            if(_loc2_)
            {
               addr0059:
               this.collectTreasuryIconsFromRentCollectorSale();
            }
            §§goto(addr005f);
         }
         addr005f:
      }
      
      private function collectTreasuryIconsFromUpsell() : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         if(!_loc8_)
         {
            if(!this._upsellEnabled)
            {
               if(!_loc8_)
               {
                  §§goto(addr002a);
               }
            }
            var _loc1_:PlayerPaymentUpsellDTO = this.playerProxy.player.playerPaymentPackInfo.upsellPaymentPack;
            if(!_loc8_)
            {
               if(_loc1_ == null)
               {
                  if(_loc9_)
                  {
                     §§goto(addr004e);
                  }
               }
               var _loc2_:ConfigPaymentPackDTO = this.configProxy.config.paymentPacks[_loc1_.id];
               if(!_loc8_)
               {
                  §§push(this.timerProxy);
                  if(_loc9_)
                  {
                     §§push(§§pop().currentTimeStamp);
                     if(!_loc8_)
                     {
                        §§push(_loc1_.startTime);
                        if(_loc9_ || Boolean(this))
                        {
                           §§push(§§pop() < §§pop());
                           if(!(_loc8_ && Boolean(this)))
                           {
                              var _temp_4:* = §§pop();
                              §§push(_temp_4);
                              if(!_temp_4)
                              {
                                 if(_loc9_ || Boolean(_loc1_))
                                 {
                                    §§pop();
                                    if(_loc9_)
                                    {
                                       §§goto(addr00e1);
                                    }
                                    §§goto(addr00f3);
                                 }
                              }
                           }
                           addr00e1:
                           §§goto(addr00bd);
                        }
                        §§goto(addr00db);
                     }
                     addr00bd:
                     §§goto(addr00ba);
                  }
                  addr00ba:
                  §§push(this.timerProxy.currentTimeStamp);
                  §§push(_loc1_.startTime);
                  if(!(_loc8_ && Boolean(this)))
                  {
                     addr00db:
                     §§push(§§pop() + _loc1_.duration);
                  }
                  if(§§pop() > §§pop())
                  {
                     if(_loc9_ || Boolean(_loc1_))
                     {
                        addr00f3:
                        return;
                     }
                  }
                  §§goto(addr00f4);
               }
               addr00f4:
               §§push(getTabIndexOfPack(_loc2_));
               if(!(_loc8_ && Boolean(_loc1_)))
               {
                  §§push(§§pop());
               }
               var _loc3_:* = §§pop();
               §§push(getCategoryIndexOfPack(_loc2_));
               if(_loc9_)
               {
                  §§push(§§pop());
               }
               var _loc4_:* = §§pop();
               §§push(getCategoryNameOfPack(_loc2_));
               if(!(_loc8_ && Boolean(_loc1_)))
               {
                  §§push(§§pop());
               }
               var _loc5_:* = §§pop();
               var _loc6_:Vector.<ConfigPaymentPackDTO> = this.gatherPacksByTabAndCategory(getTypeNameOfPack(_loc2_),_loc5_);
               var _loc7_:int = -1;
               if(!(_loc8_ && _loc3_))
               {
                  if(_loc6_ != null)
                  {
                     if(_loc9_)
                     {
                        §§goto(addr017e);
                     }
                  }
                  §§goto(addr0196);
               }
               addr017e:
               _loc7_ = int(_loc6_.indexOf(_loc2_));
               if(_loc9_ || Boolean(this))
               {
                  addr0196:
                  this._treasuryIcons.push(new TreasuryIconOverrideVo(_loc3_,_loc4_,_loc7_,UPSELL_ICON_CONSTANT,UPSELL_ICON_PRIORITY));
               }
               return;
            }
            addr004e:
            return;
         }
         addr002a:
      }
      
      private function collectTreasuryIconsFromBonusDay() : void
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc4_:ConfigEventDTO = null;
         var _loc1_:CityImprovementProxy = facade.retrieveProxy(CityImprovementProxy.NAME) as CityImprovementProxy;
         var _loc2_:EventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
         var _loc3_:Boolean = false;
         for each(_loc4_ in _loc2_.listOfRunningGlobalEvents)
         {
            if(_loc4_.eventType == ServerEventTypeConst.BONUSDAY)
            {
               if(_loc11_ || Boolean(_loc2_))
               {
                  _loc3_ = true;
               }
               break;
            }
         }
         if(_loc11_)
         {
            §§push(_loc3_);
            if(_loc11_)
            {
               §§push(!§§pop());
               if(_loc11_)
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  §§push(_temp_4);
                  if(!(_loc10_ && _loc3_))
                  {
                     if(!§§pop())
                     {
                        if(!(_loc10_ && Boolean(_loc2_)))
                        {
                           §§pop();
                           if(_loc11_ || _loc3_)
                           {
                              §§push(_loc1_ == null);
                              if(!_loc10_)
                              {
                                 addr00d5:
                                 var _temp_8:* = §§pop();
                                 addr00d6:
                                 §§push(_temp_8);
                                 if(!_temp_8)
                                 {
                                    if(!(_loc10_ && Boolean(_loc1_)))
                                    {
                                       §§pop();
                                       if(_loc11_)
                                       {
                                          addr0100:
                                          addr00ef:
                                          §§push(_loc1_.isImprovementActive(ServerTagConstants.CLIENT_BONUS_DAY));
                                          if(!_loc10_)
                                          {
                                             addr00ff:
                                             §§push(§§pop());
                                          }
                                          if(§§pop())
                                          {
                                             if(_loc11_ || Boolean(this))
                                             {
                                                §§goto(addr0112);
                                             }
                                          }
                                          addr0113:
                                          §§push(CityTreasuryTabProxy.CURRENCY_TAB_INDEX);
                                          if(!_loc10_)
                                          {
                                             §§push(§§pop());
                                          }
                                          var _loc5_:* = §§pop();
                                          var _loc6_:* = int(resourceCategories.indexOf(ServerResConst.RESOURCE_REALCURRENCY));
                                          var _loc7_:* = 0;
                                          if(!(_loc10_ && _loc3_))
                                          {
                                             while(true)
                                             {
                                                §§push(_loc7_);
                                                if(_loc10_)
                                                {
                                                   break;
                                                }
                                                if(§§pop() >= this.allRealCurrencyPacks.length)
                                                {
                                                   if(_loc11_ || Boolean(_loc2_))
                                                   {
                                                      §§push(CityTreasuryTabProxy.PACKS_TAB_INDEX);
                                                      if(_loc11_)
                                                      {
                                                         §§push(§§pop());
                                                         if(!_loc10_)
                                                         {
                                                            break;
                                                         }
                                                         addr0259:
                                                         §§push(§§pop());
                                                         if(_loc11_)
                                                         {
                                                            addr0260:
                                                            _loc5_ = §§pop();
                                                            if(_loc11_)
                                                            {
                                                               addr0268:
                                                               §§push(int(specialCategories.indexOf(ServerTagConstants.CLIENT_PAYMENT_PACK_RENT_COLLECTOR)));
                                                               if(_loc11_ || _loc3_)
                                                               {
                                                                  addr0283:
                                                                  _loc6_ = §§pop();
                                                                  if(!(_loc10_ && Boolean(_loc1_)))
                                                                  {
                                                                     addr0293:
                                                                     §§push(0);
                                                                     if(!_loc10_)
                                                                     {
                                                                        addr029b:
                                                                        _loc7_ = §§pop();
                                                                        if(_loc11_)
                                                                        {
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc7_);
                                                                        }
                                                                        addr02f1:
                                                                        return;
                                                                        addr02e5:
                                                                     }
                                                                     while(§§pop() < this.allExternalRentCollectorPacks.length)
                                                                     {
                                                                        this._treasuryIcons.push(new TreasuryIconOverrideVo(_loc5_,_loc6_,_loc7_,BONUSDAY_ICON_CONSTANT,BONUSDAYUPSELL_ICON_PRIORITY));
                                                                        if(_loc11_ || _loc3_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              _loc7_++;
                                                                              if(_loc10_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§goto(addr02e5);
                                                                           }
                                                                           addr02dd:
                                                                        }
                                                                        break;
                                                                     }
                                                                  }
                                                                  §§goto(addr02f1);
                                                               }
                                                               §§goto(addr029b);
                                                            }
                                                            §§goto(addr02e5);
                                                         }
                                                         §§goto(addr029b);
                                                      }
                                                      §§goto(addr0260);
                                                   }
                                                   §§goto(addr0293);
                                                }
                                                else
                                                {
                                                   this._treasuryIcons.push(new TreasuryIconOverrideVo(_loc5_,_loc6_,_loc7_,BONUSDAY_ICON_CONSTANT,BONUSDAYUPSELL_ICON_PRIORITY));
                                                   if(_loc11_ || Boolean(_loc1_))
                                                   {
                                                      _loc7_++;
                                                      if(_loc11_)
                                                      {
                                                         continue;
                                                      }
                                                      addr022e:
                                                      loop4:
                                                      while(true)
                                                      {
                                                         §§push(_loc6_);
                                                         if(_loc10_ && Boolean(this))
                                                         {
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop() >= starterPackCategories.length)
                                                            {
                                                               if(!_loc10_)
                                                               {
                                                                  §§push(CityTreasuryTabProxy.SPECIALS_TAB_INDEX);
                                                                  if(!_loc11_)
                                                                  {
                                                                     break loop4;
                                                                  }
                                                                  §§goto(addr0259);
                                                               }
                                                               §§goto(addr02dd);
                                                            }
                                                            else
                                                            {
                                                               this._treasuryIcons.push(new TreasuryIconOverrideVo(_loc5_,_loc6_,_loc7_,BONUSDAY_ICON_CONSTANT,BONUSDAYUPSELL_ICON_PRIORITY));
                                                               if(_loc10_ && _loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               _loc6_++;
                                                               if(!_loc10_)
                                                               {
                                                                  continue loop4;
                                                               }
                                                            }
                                                            §§goto(addr02e5);
                                                         }
                                                         §§goto(addr02f1);
                                                      }
                                                      §§goto(addr0283);
                                                   }
                                                }
                                                §§goto(addr0268);
                                             }
                                             _loc5_ = §§pop();
                                             if(_loc11_)
                                             {
                                                addr01c1:
                                                §§push(-1);
                                                if(_loc11_ || Boolean(_loc2_))
                                                {
                                                   _loc7_ = §§pop();
                                                   if(!(_loc10_ && Boolean(_loc2_)))
                                                   {
                                                      §§push(0);
                                                      if(_loc11_ || _loc3_)
                                                      {
                                                         _loc6_ = §§pop();
                                                         if(_loc11_)
                                                         {
                                                            §§goto(addr022e);
                                                         }
                                                         §§goto(addr02dd);
                                                      }
                                                      §§goto(addr023e);
                                                   }
                                                   §§goto(addr022e);
                                                }
                                                §§goto(addr0260);
                                             }
                                             §§goto(addr0293);
                                          }
                                          §§goto(addr01c1);
                                       }
                                       addr0112:
                                       return;
                                    }
                                    §§goto(addr00ff);
                                 }
                              }
                              §§goto(addr0100);
                           }
                           §§goto(addr00ef);
                        }
                        §§goto(addr0100);
                     }
                     §§goto(addr00d5);
                  }
                  §§goto(addr00d6);
               }
               §§goto(addr0100);
            }
            §§goto(addr00d5);
         }
         §§goto(addr0113);
      }
      
      private function collectTreasuryIconsFromRentCollectorSale() : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:ConfigEventDTO = null;
         var _loc1_:EventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
         var _loc2_:Boolean = false;
         for each(_loc3_ in _loc1_.listOfRunningGlobalEvents)
         {
            if(_loc7_ || _loc2_)
            {
               if(_loc3_.eventType != ServerEventTypeConst.RENTCOLLECTOR)
               {
                  continue;
               }
               if(!_loc7_)
               {
                  break;
               }
            }
            _loc2_ = true;
            break;
         }
         if(!_loc6_)
         {
            if(!_loc2_)
            {
               if(_loc7_)
               {
                  return;
               }
            }
            else
            {
               addr00ae:
               this._treasuryIcons.push(new TreasuryIconOverrideVo(CityTreasuryTabProxy.SPECIALS_TAB_INDEX,specialCategories.indexOf(ServerTagConstants.CLIENT_PAYMENT_PACK_RENT_COLLECTOR),0,RENTCOLLECTOR_SALE_ICON_CONSTANT,RENTCOLLECTOR_SALE_ICON_PRIORITY));
            }
            return;
         }
         §§goto(addr00ae);
      }
      
      public function getIndexOfPaymentPack(param1:ConfigPaymentPackDTO) : int
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         §§push(getCategoryNameOfPack(param1));
         if(_loc4_ || _loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:Vector.<ConfigPaymentPackDTO> = this.gatherPacksByTabAndCategory(getTypeNameOfPack(param1),_loc2_);
         if(_loc4_ || Boolean(param1))
         {
            §§push(_loc3_ == null);
            if(!_loc5_)
            {
               §§push(!§§pop());
               if(!_loc5_)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(_temp_3)
                  {
                     if(!_loc5_)
                     {
                        §§goto(addr0082);
                     }
                  }
                  §§goto(addr0097);
               }
               addr0082:
               §§pop();
               if(_loc4_ || Boolean(this))
               {
                  addr0097:
                  if(_loc3_.length > 0)
                  {
                     if(_loc4_)
                     {
                        §§goto(addr00a1);
                     }
                  }
               }
               return -1;
            }
            §§goto(addr0097);
         }
         addr00a1:
         return _loc3_.indexOf(param1);
      }
      
      public function getIcon(param1:int, param2:int = -1, param3:int = -1) : String
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc5_:TreasuryIconOverrideVo = null;
         var _loc6_:* = false;
         if(_loc9_)
         {
            if(this._treasuryIcons == null)
            {
               if(_loc9_)
               {
                  addr0033:
                  this.collectTreasuryIconOverrides();
               }
            }
            var _loc4_:TreasuryIconOverrideVo = null;
            for each(_loc5_ in this._treasuryIcons)
            {
               if(!_loc10_)
               {
                  §§push(false);
                  if(!(_loc10_ && Boolean(param3)))
                  {
                     _loc6_ = §§pop();
                     if(_loc9_)
                     {
                        addr0076:
                        §§push(_loc5_.tab);
                        if(!_loc10_)
                        {
                           §§push(param1);
                           if(_loc9_ || Boolean(param1))
                           {
                              if(§§pop() != §§pop())
                              {
                                 continue;
                              }
                              if(_loc9_)
                              {
                                 §§push(param2);
                                 if(_loc9_ || Boolean(param1))
                                 {
                                    §§push(-1);
                                    if(!(_loc10_ && Boolean(this)))
                                    {
                                       addr00ba:
                                       if(§§pop() != §§pop())
                                       {
                                          if(_loc9_ || Boolean(param1))
                                          {
                                             §§push(_loc5_.cat);
                                             if(!_loc10_)
                                             {
                                                addr00d8:
                                                §§push(param2);
                                                if(_loc9_)
                                                {
                                                   addr00df:
                                                   if(§§pop() == §§pop())
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         addr00e9:
                                                         §§push(param3);
                                                         if(_loc9_ || Boolean(this))
                                                         {
                                                            addr00f8:
                                                            §§push(-1);
                                                            if(!(_loc10_ && Boolean(param1)))
                                                            {
                                                               if(§§pop() != §§pop())
                                                               {
                                                                  if(!_loc10_)
                                                                  {
                                                                     addr0125:
                                                                     addr0124:
                                                                     if(_loc5_.index == param3)
                                                                     {
                                                                        if(!(_loc10_ && Boolean(param3)))
                                                                        {
                                                                           addr0137:
                                                                           §§push(true);
                                                                           if(!(_loc10_ && Boolean(param2)))
                                                                           {
                                                                              _loc6_ = §§pop();
                                                                              if(_loc9_ || Boolean(param3))
                                                                              {
                                                                                 addr0194:
                                                                                 §§push(_loc6_);
                                                                                 if(_loc9_ || Boolean(param1))
                                                                                 {
                                                                                    addr01a4:
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(!(_loc10_ && Boolean(this)))
                                                                                    {
                                                                                       addr01b6:
                                                                                       §§push(_loc4_ == null);
                                                                                       if(_loc9_ || Boolean(param3))
                                                                                       {
                                                                                          addr01c8:
                                                                                          var _temp_14:* = §§pop();
                                                                                          §§push(_temp_14);
                                                                                          if(!_temp_14)
                                                                                          {
                                                                                             if(_loc9_ || Boolean(param3))
                                                                                             {
                                                                                                addr01db:
                                                                                                §§pop();
                                                                                                if(_loc9_ || Boolean(this))
                                                                                                {
                                                                                                   addr0205:
                                                                                                   addr01ea:
                                                                                                   if(_loc5_.prio <= _loc4_.prio)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                }
                                                                                                addr0209:
                                                                                                _loc4_ = _loc5_;
                                                                                                continue;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr0205);
                                                                                    }
                                                                                    §§goto(addr0209);
                                                                                 }
                                                                                 §§goto(addr01db);
                                                                              }
                                                                              §§goto(addr01b6);
                                                                           }
                                                                           §§goto(addr01c8);
                                                                        }
                                                                        §§goto(addr01ea);
                                                                     }
                                                                     §§goto(addr0194);
                                                                  }
                                                                  §§goto(addr01b6);
                                                               }
                                                               else
                                                               {
                                                                  §§push(true);
                                                                  if(!(_loc10_ && Boolean(this)))
                                                                  {
                                                                     _loc6_ = §§pop();
                                                                     if(!(_loc10_ && Boolean(this)))
                                                                     {
                                                                        §§goto(addr0194);
                                                                     }
                                                                     §§goto(addr01b6);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr018c:
                                                                     _loc6_ = §§pop();
                                                                     if(!_loc10_)
                                                                     {
                                                                        §§goto(addr0194);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr01ea);
                                                            }
                                                            §§goto(addr0125);
                                                         }
                                                         §§goto(addr0124);
                                                      }
                                                      §§goto(addr0137);
                                                   }
                                                   §§goto(addr0194);
                                                }
                                                §§goto(addr0125);
                                             }
                                             §§goto(addr00f8);
                                          }
                                          §§goto(addr0194);
                                       }
                                       else
                                       {
                                          §§push(true);
                                          if(_loc9_ || Boolean(this))
                                          {
                                             §§goto(addr018c);
                                          }
                                       }
                                       §§goto(addr01a4);
                                    }
                                    §§goto(addr00df);
                                 }
                                 §§goto(addr00d8);
                              }
                              §§goto(addr01b6);
                           }
                           §§goto(addr00ba);
                        }
                        §§goto(addr0124);
                     }
                     §§goto(addr00e9);
                  }
                  §§goto(addr01c8);
               }
               §§goto(addr0076);
            }
            if(!(_loc10_ && Boolean(param1)))
            {
               if(_loc4_)
               {
                  if(_loc9_)
                  {
                     §§goto(addr0235);
                  }
               }
               return null;
            }
            addr0235:
            return _loc4_.icon;
         }
         §§goto(addr0033);
      }
      
      public function cleanTreasuryIcons() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this._treasuryIcons = null;
         }
      }
      
      public function get upsellEnabled() : Boolean
      {
         return this._upsellEnabled;
      }
      
      public function set upsellEnabled(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(this._upsellEnabled != param1)
            {
               if(_loc2_ || param1)
               {
                  this.cleanTreasuryIcons();
                  if(_loc2_ || Boolean(this))
                  {
                     addr004b:
                     this._upsellEnabled = param1;
                  }
               }
               §§goto(addr0050);
            }
            §§goto(addr004b);
         }
         addr0050:
      }
   }
}

