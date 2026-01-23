package net.bigpoint.cityrama.view.upselling.vo
{
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackUpsellingDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigTagDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PlayerPaymentUpsellDTO;
   
   public class UpsellingOfferLayerVo
   {
      
      private var _packConfig:ConfigPaymentPackDTO;
      
      private var _currentUpsell:PlayerPaymentUpsellDTO;
      
      public function UpsellingOfferLayerVo()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      public function get packConfig() : ConfigPaymentPackDTO
      {
         return this._packConfig;
      }
      
      public function set packConfig(param1:ConfigPaymentPackDTO) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._packConfig = param1;
         }
      }
      
      public function get currentUpsell() : PlayerPaymentUpsellDTO
      {
         return this._currentUpsell;
      }
      
      public function set currentUpsell(param1:PlayerPaymentUpsellDTO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this._currentUpsell = param1;
         }
      }
      
      public function get locaID() : String
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc1_:ConfigPaymentPackUpsellingDTO = null;
         var _loc2_:ConfigTagDTO = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.packConfig.upsellPackages;
         while(true)
         {
            §§push(§§hasnext(_loc4_,_loc3_));
            if(!(_loc6_ && Boolean(_loc1_)))
            {
               if(§§pop())
               {
                  _loc1_ = §§nextvalue(_loc3_,_loc4_);
                  if(_loc6_ && Boolean(_loc2_))
                  {
                     break;
                  }
                  §§push(_loc1_.key);
                  if(_loc6_ && Boolean(_loc1_))
                  {
                     return §§pop();
                  }
                  if(§§pop() == this.currentUpsell.type)
                  {
                     if(!(_loc6_ && Boolean(_loc1_)))
                     {
                        break;
                     }
                  }
                  continue;
               }
               if(_loc7_ || Boolean(this))
               {
                  if(!(_loc6_ && Boolean(this)))
                  {
                     if(_loc7_ || Boolean(_loc3_))
                     {
                        _loc3_ = 0;
                        if(_loc7_)
                        {
                           _loc4_ = this.packConfig.configTags;
                           loop1:
                           while(true)
                           {
                              §§push(§§hasnext(_loc4_,_loc3_));
                              addr0280:
                              while(§§pop())
                              {
                                 _loc2_ = §§nextvalue(_loc3_,_loc4_);
                                 if(!_loc6_)
                                 {
                                    var _loc5_:* = _loc2_.tagName;
                                    if(!(_loc6_ && Boolean(this)))
                                    {
                                       §§push(ServerTagConstants.CLIENT_RESOURCE_REBUY_PACK);
                                       if(_loc7_ || Boolean(_loc1_))
                                       {
                                          §§push(_loc5_);
                                          if(!_loc6_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!(_loc6_ && Boolean(this)))
                                                {
                                                   §§push(0);
                                                   if(_loc7_)
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   addr0244:
                                                   §§push(4);
                                                   if(_loc7_ || Boolean(_loc1_))
                                                   {
                                                   }
                                                }
                                                §§goto(addr0264);
                                             }
                                             §§push(ServerTagConstants.CLIENT_PAYMENT_PACK_STARTER);
                                             if(_loc7_ || Boolean(_loc3_))
                                             {
                                                addr0185:
                                                §§push(_loc5_);
                                                if(!(_loc6_ && Boolean(_loc2_)))
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!(_loc6_ && Boolean(_loc1_)))
                                                      {
                                                         §§push(1);
                                                         if(_loc7_ || Boolean(this))
                                                         {
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr0221:
                                                         §§push(3);
                                                         if(_loc6_)
                                                         {
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(ServerTagConstants.CLIENT_PAYMENT_PACK_STUDENT);
                                                      if(_loc7_ || Boolean(_loc1_))
                                                      {
                                                         addr01ce:
                                                         §§push(_loc5_);
                                                         if(_loc7_ || Boolean(this))
                                                         {
                                                            addr01de:
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!(_loc6_ && Boolean(this)))
                                                               {
                                                                  §§push(2);
                                                                  if(_loc6_)
                                                                  {
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr0221);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(ServerTagConstants.CLIENT_PAYMENT_PACK_PRODUCTION);
                                                               if(!_loc6_)
                                                               {
                                                                  §§push(_loc5_);
                                                                  if(_loc7_)
                                                                  {
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(_loc7_ || Boolean(_loc2_))
                                                                        {
                                                                           §§goto(addr0221);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr0244);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr0240);
                                                                     }
                                                                     §§goto(addr0244);
                                                                  }
                                                                  addr0240:
                                                                  §§goto(addr023e);
                                                               }
                                                               addr023e:
                                                               if(ServerTagConstants.CLIENT_PAYMENT_PACK_FIRST_AID === _loc5_)
                                                               {
                                                                  §§goto(addr0244);
                                                               }
                                                               else
                                                               {
                                                                  §§push(5);
                                                               }
                                                               §§goto(addr0264);
                                                            }
                                                            §§goto(addr0264);
                                                         }
                                                         §§goto(addr0240);
                                                      }
                                                      §§goto(addr023e);
                                                   }
                                                   addr0264:
                                                   switch(§§pop())
                                                   {
                                                      case 0:
                                                         §§push("realCurrency");
                                                         if(_loc7_ || Boolean(_loc3_))
                                                         {
                                                            return §§pop();
                                                         }
                                                         break;
                                                      case 1:
                                                      case 2:
                                                      case 3:
                                                      case 4:
                                                         addr0105:
                                                         return "pack";
                                                      default:
                                                         continue loop1;
                                                   }
                                                   return §§pop();
                                                }
                                                §§goto(addr01de);
                                             }
                                             §§goto(addr01ce);
                                             §§goto(addr0244);
                                          }
                                          §§goto(addr0240);
                                       }
                                       §§goto(addr0185);
                                    }
                                    §§goto(addr0244);
                                 }
                                 §§goto(addr0105);
                              }
                              break;
                           }
                           addr0284:
                        }
                        addr0286:
                     }
                     return "";
                  }
                  §§goto(addr0286);
               }
               §§goto(addr0284);
            }
            §§goto(addr0280);
         }
         §§goto(addr0076);
         §§push(_loc1_.localeId);
      }
   }
}

