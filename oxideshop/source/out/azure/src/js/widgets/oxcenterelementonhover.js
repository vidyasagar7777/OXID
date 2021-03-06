/**
 * This file is part of OXID eShop Azure Theme.
 *
 * OXID eShop Azure Theme is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * OXID eShop Azure Theme is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with OXID eShop Azure Theme.  If not, see <http://www.gnu.org/licenses/>.
 *
 * @link      http://www.oxid-esales.com
 * @copyright (C) OXID eSales AG 2003-2017
 * @version   OXID eShop Azure Theme
 */
( function( $ ) {

    oxCenterElementOnHover = {

        _create: function(){

            var self = this;
            var el   = self.element;

             el.hover(function(){
                  var targetObj = $(".viewAllHover", el);
                  var targetObjWidth = targetObj.outerWidth() / 2;
                  var parentObjWidth = el.width() / 2;

                  targetObj.css("left", parentObjWidth - targetObjWidth + "px");
                  targetObj.show();
              }, function(){
                  $(".viewAllHover", el).hide();
              });
        }
    };

    $.widget( "ui.oxCenterElementOnHover", oxCenterElementOnHover );

} )( jQuery );
