package net.bigpoint.cityrama.model.needsSystem.vo
{
   public class ResidentialNeedPopupVo
   {
      
      private var _type:String;
      
      private var _user:Boolean;
      
      private var _parentBuildingGfxId:Number;
      
      private var _parentLocaleId:String;
      
      private var _imageId:String;
      
      private var _dynaLibName:String;
      
      private var _fulfilled:Boolean;
      
      private var _locked:Boolean;
      
      private var _buildingLevelRequired:int;
      
      private var _vcBonus:Number;
      
      private var _ppBonus:Number;
      
      private var _epBonus:Number;
      
      public function ResidentialNeedPopupVo(param1:String, param2:Boolean, param3:Number, param4:String, param5:Boolean, param6:String, param7:String = "gui_resources_icons", param8:Boolean = false, param9:int = 1, param10:Number = 0, param11:Number = 0, param12:Number = 0)
      {
         §§push(false);
         var _loc13_:Boolean = true;
         var _loc14_:* = §§pop();
         if(!(_loc14_ && Boolean(this)))
         {
            super();
            if(_loc13_)
            {
               this._type = param1;
               if(_loc13_)
               {
                  this._user = param2;
                  if(!_loc14_)
                  {
                     this._parentBuildingGfxId = param3;
                     if(_loc13_)
                     {
                        this._parentLocaleId = param4;
                        if(!_loc14_)
                        {
                           this._fulfilled = param5;
                           if(_loc13_ || Boolean(param1))
                           {
                              addr007c:
                              this._imageId = param6;
                              if(!_loc14_)
                              {
                                 addr0088:
                                 this._dynaLibName = param7;
                                 if(!(_loc14_ && Boolean(param3)))
                                 {
                                    this._locked = param8;
                                    if(_loc13_ || Boolean(param3))
                                    {
                                       addr00c0:
                                       this._buildingLevelRequired = param9;
                                       if(!_loc14_)
                                       {
                                          this._vcBonus = param10;
                                          if(_loc13_ || Boolean(this))
                                          {
                                             addr00e1:
                                             this._ppBonus = param11;
                                             if(_loc13_)
                                             {
                                                addr00ee:
                                                this._epBonus = param12;
                                             }
                                          }
                                          §§goto(addr00f5);
                                       }
                                       §§goto(addr00e1);
                                    }
                                    §§goto(addr00ee);
                                 }
                                 §§goto(addr00e1);
                              }
                              §§goto(addr00f5);
                           }
                           §§goto(addr00c0);
                        }
                        §§goto(addr0088);
                     }
                  }
                  §§goto(addr00e1);
               }
               §§goto(addr0088);
            }
            addr00f5:
            return;
         }
         §§goto(addr007c);
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get user() : Boolean
      {
         return this._user;
      }
      
      public function get parentBuildingGfxId() : int
      {
         return this._parentBuildingGfxId;
      }
      
      public function get imageId() : String
      {
         return this._imageId;
      }
      
      public function get dynaLibName() : String
      {
         return this._dynaLibName;
      }
      
      public function get fulfilled() : Boolean
      {
         return this._fulfilled;
      }
      
      public function get locked() : Boolean
      {
         return this._locked;
      }
      
      public function get buildingLevelRequired() : int
      {
         return this._buildingLevelRequired;
      }
      
      public function get parentLocaleId() : String
      {
         return this._parentLocaleId;
      }
      
      public function get vcBonus() : Number
      {
         return this._vcBonus;
      }
      
      public function set fulfilled(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._fulfilled = param1;
         }
      }
      
      public function get ppBonus() : Number
      {
         return this._ppBonus;
      }
      
      public function get epBonus() : Number
      {
         return this._epBonus;
      }
   }
}

