package net.bigpoint.cityrama.model.vo
{
   public class BestsellerVo
   {
      
      public static const GUI_INFOLAYER_STARTER:String = "pack.starter";
      
      public static const GUI_INFOLAYER_PROD_STARTER:String = "pack.productionstarter";
      
      public static const GUI_INFOLAYER_EDU_STARTER:String = "pack.studentstarter";
      
      public static const GUI_INFOLAYER_EMERG_STARTER:String = "pack.emergencystarter";
      
      public static const GUI_INFOLAYER_BUYRC:String = "action.buyrc";
      
      public static const GUI_INFOLAYER_CFA:String = "action.cashforaction";
      
      public static const GUI_INFOLAYER_SOON:String = "ad.commingsoon";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         GUI_INFOLAYER_STARTER = "pack.starter";
         if(!_loc1_)
         {
            GUI_INFOLAYER_PROD_STARTER = "pack.productionstarter";
            if(_loc2_ || _loc2_)
            {
               GUI_INFOLAYER_EDU_STARTER = "pack.studentstarter";
               if(!_loc1_)
               {
                  GUI_INFOLAYER_EMERG_STARTER = "pack.emergencystarter";
                  if(!_loc1_)
                  {
                     addr006e:
                     GUI_INFOLAYER_BUYRC = "action.buyrc";
                     if(_loc2_)
                     {
                        addr007d:
                        GUI_INFOLAYER_CFA = "action.cashforaction";
                        if(_loc2_ || _loc1_)
                        {
                           addr0094:
                           GUI_INFOLAYER_SOON = "ad.commingsoon";
                        }
                     }
                  }
                  §§goto(addr009e);
               }
               §§goto(addr007d);
            }
            §§goto(addr006e);
         }
         §§goto(addr0094);
      }
      addr009e:
      
      private var _libName:String;
      
      private var _imageName:String;
      
      private var _goldBG:Boolean;
      
      private var _teaserText:String;
      
      private var _locked:Boolean;
      
      private var _clickCommand:String;
      
      private var _guiInfolayerLocaKey:String;
      
      public function BestsellerVo(param1:String, param2:String, param3:Boolean, param4:String, param5:String, param6:Boolean = false, param7:String = null)
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         if(_loc8_)
         {
            super();
            if(_loc8_ || Boolean(this))
            {
               this._libName = param1;
               if(_loc8_ || Boolean(this))
               {
                  this._imageName = param2;
                  if(_loc8_)
                  {
                     addr0058:
                     this._goldBG = param3;
                     if(_loc8_ || Boolean(param1))
                     {
                        this._teaserText = param4;
                        if(!(_loc9_ && Boolean(param2)))
                        {
                           addr008b:
                           this._locked = param6;
                           if(_loc8_)
                           {
                              this._clickCommand = param7;
                              if(_loc8_)
                              {
                                 addr00a4:
                                 this._guiInfolayerLocaKey = param5;
                              }
                           }
                           §§goto(addr00ab);
                        }
                        §§goto(addr00a4);
                     }
                  }
                  §§goto(addr00ab);
               }
               §§goto(addr0058);
            }
            §§goto(addr008b);
         }
         addr00ab:
      }
      
      public function get imageName() : String
      {
         return this._imageName;
      }
      
      public function set imageName(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._imageName = param1;
         }
      }
      
      public function get libName() : String
      {
         return this._libName;
      }
      
      public function set libName(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this._libName = param1;
         }
      }
      
      public function get goldBG() : Boolean
      {
         return this._goldBG;
      }
      
      public function set goldBG(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._goldBG = param1;
         }
      }
      
      public function get teaserText() : String
      {
         return this._teaserText;
      }
      
      public function set teaserText(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._teaserText = param1;
         }
      }
      
      public function get locked() : Boolean
      {
         return this._locked;
      }
      
      public function get clickCommand() : String
      {
         return this._clickCommand;
      }
      
      public function set clickCommand(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this._clickCommand = param1;
         }
      }
      
      public function get guiInfolayerLocaKey() : String
      {
         return this._guiInfolayerLocaKey;
      }
   }
}

