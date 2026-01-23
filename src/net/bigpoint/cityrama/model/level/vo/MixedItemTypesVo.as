package net.bigpoint.cityrama.model.level.vo
{
   import net.bigpoint.cityrama.model.server.vo.server.ConfigAssistDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigImprovementDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigResourceDTO;
   
   public class MixedItemTypesVo
   {
      
      public static const PLAYFIELDITEM:String = "PLAYFIELDITEM";
      
      public static const GOOD:String = "GOOD";
      
      public static const IMPROVEMENT:String = "IMPROVEMENT";
      
      public static const RESOURCE:String = "RESOURCE";
      
      public static const ASSIST:String = "ASSIST";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc1_)
      {
         PLAYFIELDITEM = "PLAYFIELDITEM";
         if(!(_loc1_ && MixedItemTypesVo))
         {
            addr0048:
            GOOD = "GOOD";
            if(_loc2_)
            {
               IMPROVEMENT = "IMPROVEMENT";
               if(!_loc1_)
               {
                  RESOURCE = "RESOURCE";
                  if(!_loc1_)
                  {
                     addr0072:
                     ASSIST = "ASSIST";
                  }
                  return;
               }
            }
         }
         §§goto(addr0072);
      }
      §§goto(addr0048);
      
      private var _configItem:ConfigPlayfieldItemDTO;
      
      private var _configGood:ConfigGoodDTO;
      
      private var _configImprovement:ConfigImprovementDTO;
      
      private var _configResource:ConfigResourceDTO;
      
      private var _configAssist:ConfigAssistDTO;
      
      private var _type:String;
      
      private var _itemType:int = -1;
      
      private var _gfxId:Number;
      
      private var _localeId:String;
      
      private var _specialHighlighting:Boolean;
      
      private var _amount:Number = 0;
      
      private var _unlocked:Boolean;
      
      private var _advisorGroup:String;
      
      public function MixedItemTypesVo(param1:* = null)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            super();
            if(_loc2_ || Boolean(this))
            {
               §§push(param1 is ConfigPlayfieldItemDTO);
               if(_loc2_ || Boolean(this))
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        this._configItem = param1 as ConfigPlayfieldItemDTO;
                        if(!_loc3_)
                        {
                           this._gfxId = this._configItem.gfxId;
                           if(_loc2_ || param1)
                           {
                              this._localeId = this._configItem.localeId as String;
                              if(_loc2_ || Boolean(this))
                              {
                                 this._type = PLAYFIELDITEM;
                                 if(!_loc3_)
                                 {
                                    this._specialHighlighting = this._configItem.specialHighlighting;
                                    if(!(_loc2_ || _loc3_))
                                    {
                                       addr0211:
                                       this._type = ASSIST;
                                    }
                                 }
                                 else
                                 {
                                    addr0207:
                                    this._configAssist = param1;
                                    if(_loc2_)
                                    {
                                       §§goto(addr0211);
                                    }
                                 }
                              }
                           }
                           else
                           {
                              addr0184:
                              this._type = IMPROVEMENT;
                              if(_loc2_)
                              {
                              }
                           }
                        }
                     }
                     else
                     {
                        addr00cd:
                        this._configGood = param1 as ConfigGoodDTO;
                        if(!(_loc3_ && param1))
                        {
                           this._gfxId = this._configGood.gfxId;
                           if(_loc2_ || _loc2_)
                           {
                              this._localeId = this._configGood.localeId as String;
                              if(_loc2_ || param1)
                              {
                                 this._type = GOOD;
                                 if(_loc2_ || _loc2_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              addr0174:
                              this._localeId = this._configImprovement.locaId;
                              if(_loc2_)
                              {
                                 §§goto(addr0184);
                              }
                              else
                              {
                                 §§goto(addr0211);
                              }
                           }
                        }
                        else
                        {
                           addr01b7:
                           this._configResource = param1 as ConfigResourceDTO;
                           if(!(_loc3_ && _loc2_))
                           {
                              addr01cd:
                              this._type = RESOURCE;
                              if(_loc2_ || _loc3_)
                              {
                              }
                           }
                        }
                     }
                  }
                  else
                  {
                     §§push(param1 is ConfigGoodDTO);
                     if(!(_loc3_ && param1))
                     {
                        if(§§pop())
                        {
                           if(!_loc3_)
                           {
                              §§goto(addr00cd);
                           }
                           §§goto(addr01cd);
                        }
                        else
                        {
                           §§push(param1 is ConfigImprovementDTO);
                           if(_loc2_)
                           {
                              if(§§pop())
                              {
                                 if(_loc2_ || Boolean(this))
                                 {
                                    this._configImprovement = param1 as ConfigImprovementDTO;
                                    if(_loc2_)
                                    {
                                       this._gfxId = this._configImprovement.gfxId;
                                       if(!_loc3_)
                                       {
                                          §§goto(addr0174);
                                       }
                                       §§goto(addr0218);
                                    }
                                 }
                                 §§goto(addr0184);
                              }
                              else
                              {
                                 §§push(param1 is ConfigResourceDTO);
                                 if(_loc2_ || _loc3_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc2_ || Boolean(this))
                                       {
                                          §§goto(addr01b7);
                                       }
                                       else
                                       {
                                          §§goto(addr0207);
                                       }
                                    }
                                    else
                                    {
                                       addr01f6:
                                       if(param1 is ConfigAssistDTO)
                                       {
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             §§goto(addr0207);
                                          }
                                          §§goto(addr0211);
                                       }
                                    }
                                    §§goto(addr0218);
                                 }
                                 §§goto(addr01f6);
                              }
                           }
                           §§goto(addr01f6);
                        }
                     }
                     §§goto(addr01f6);
                  }
                  addr0218:
                  return;
               }
               §§goto(addr01f6);
            }
            §§goto(addr0207);
         }
         §§goto(addr01b7);
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get gfxId() : Number
      {
         return this._gfxId;
      }
      
      public function get localeId() : String
      {
         return this._localeId;
      }
      
      public function set type(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._type = param1;
         }
      }
      
      public function set gfxId(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._gfxId = param1;
         }
      }
      
      public function set localeId(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this._localeId = param1;
         }
      }
      
      public function get specialHighlighting() : Boolean
      {
         return this._specialHighlighting;
      }
      
      public function set specialHighlighting(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._specialHighlighting = param1;
         }
      }
      
      public function get configItem() : ConfigPlayfieldItemDTO
      {
         return this._configItem;
      }
      
      public function get configGood() : ConfigGoodDTO
      {
         return this._configGood;
      }
      
      public function get amount() : Number
      {
         return this._amount;
      }
      
      public function set amount(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._amount = param1;
         }
      }
      
      public function get unlocked() : Boolean
      {
         return this._unlocked;
      }
      
      public function set unlocked(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._unlocked = param1;
         }
      }
      
      public function get configImprovement() : ConfigImprovementDTO
      {
         return this._configImprovement;
      }
      
      public function get configResource() : ConfigResourceDTO
      {
         return this._configResource;
      }
      
      public function get configAssist() : ConfigAssistDTO
      {
         return this._configAssist;
      }
   }
}

